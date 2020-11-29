package main;

import javax.print.attribute.standard.PresentationDirection;
import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

public class Table {
    private List<Cell> table;

    public Table(){
        table = new ArrayList<>();
    }

    public void addCell(Cell cell){
        table.add(cell);
    }

    public List<Cell> getTable(){
        return table;
    }

    public boolean isEmpty(){
        return table==null;
    }


}
