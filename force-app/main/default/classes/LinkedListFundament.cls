public with sharing class LinkedListFundament {
    private NodeElement head;
    private Integer size; 
    private NodeElement tail;

    public LinkedListFundament() {
        this.head = null;
        this.size = 0;
    }

    public static void printList(NodeElement head) {

        NodeElement ptr = head;
        while(ptr != null) {
            System.debug(ptr.elementData +'-> ');
            ptr = ptr.nextElement;
        }

        System.debug('Null');
    }

    public void add(NodeElement nodeElem) {
        return null;
    }

    public void add(Integer index, NodeElement nodeElem) {
        return null;
    }

}