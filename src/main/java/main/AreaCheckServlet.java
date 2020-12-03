package main;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ServletContext context = getServletContext();
        Table table = (Table) context.getAttribute("table");
        if (table == null) {
            table = new Table();
        }
        context.setAttribute("table", table);

        try {
            double x = Double.parseDouble(req.getParameter("X"));
            double y = Double.parseDouble(req.getParameter("Y"));
            double r = Double.parseDouble(req.getParameter("R"));
            boolean pic = req.getParameter("pic").equals("button");
            if (pic) {
                if (checkX(x) && checkY(y) && checkR(r)) {
                    Cell cell = new Cell(x, y, r, new Date(), checkArea(x, y, r));
                    table.addCell(cell);

                    try(PrintWriter printWriter = resp.getWriter()){
                        printResult(printWriter, String.valueOf(x), String.valueOf(y), String.valueOf(r), String.valueOf(cell.isResult()));
                    }

                    //req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

                }else{
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
                }
            } else {
                if (checkR(r)) {
                    Cell cell = new Cell(x, y, r, new Date(), checkArea(x, y, r));
                    table.addCell(cell);

                    try(PrintWriter printWriter = resp.getWriter()){
                        printResult(printWriter, String.valueOf(x), String.valueOf(y), String.valueOf(r), String.valueOf(cell.isResult()));
                    }

                    //req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
                }else{
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
                }
            }


        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    public void printResult(PrintWriter writer, String x, String y, String r, String res){

        String answer = "<html>\n" +
                "  <head>\n" +
                "    <meta charset=\"utf-8\" /> " +
                " </head>" +
                "<body>" +
                "<table>" +
                "        <tr>\n" +
                "            <th>X</th>\n" +
                "            <th>Y</th>\n" +
                "            <th>R</th>\n" +
                "            <th>Result</th>\n" +
                "        </tr>\n" +
                "        <tr>\n" +
                "            <td>" + x + "</td>\n" +
                "            <td>" + y + "</td>\n" +
                "            <td>" + r + "</td>\n" +
                "            <td>" + res + "</td>\n" +
                "        </tr>\n" +
                "</table>"+
                "<a href = \"/web2butbetter_war_exploded/\" > BACK TO MAIN PAGE </a>" +
                "</body></html>";
        writer.write(answer);
        writer.close();
    }



    private boolean checkX(double x) {
        Integer[] xList = {-3, -2, -1, 0, 1, 2, 3, 4, 5};
        return Arrays.asList(xList).contains((int) x);
    }

    private boolean checkY(double y) {
        return (-3d < y && y < 3d);
    }

    private boolean checkR(double r) {
        Double[] rList = {1d, 2d, 3d, 4d, 5d};
        return Arrays.asList(rList).contains(r);

    }

    private boolean checkArea(double x, double y, double r) {
        return ((y <= x + r) && x <= 0 && y >= 0) ||
                (y <= r / 2 && x <= r && x > 0 && y > 0) ||
                (x * x + y * y <= (r * r / 4) && y < 0 && x > 0);

    }


    private void formPage(PrintWriter pw){
        pw.println("<HTML>");

    }
}
