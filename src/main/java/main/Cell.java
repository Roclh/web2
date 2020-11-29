package main;

import java.util.Date;
import java.util.Objects;

public class Cell implements Comparable<Cell>{
    private double X;
    private double Y;
    private double R;
    private Date date;
    private boolean result;

    public Cell(double x, double y, double r, Date date, boolean result){
        this.X = x;
        this.Y = y;
        this.R = r;
        this.date = date;
        this.result = result;
    }

    public double getX() {
        return X;
    }

    public void setX(double x) {
        X = x;
    }

    public double getY() {
        return Y;
    }

    public void setY(double y) {
        Y = y;
    }

    public double getR() {
        return R;
    }

    public void setR(double r) {
        R = r;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cell cell = (Cell) o;
        return X == cell.X &&
                Double.compare(cell.Y, Y) == 0 &&
                R == cell.R &&
                result == cell.result &&
                Objects.equals(date, cell.date);
    }

    @Override
    public int hashCode() {
        return Objects.hash(X, Y, R, date, result);
    }

    @Override
    public String toString() {
        return "Cell{" +
                "X=" + X +
                ", Y=" + Y +
                ", R=" + R +
                ", date=" + date +
                ", result=" + result +
                '}';
    }

    public int compareTo(Cell o) {
        return 0;
    }
}
