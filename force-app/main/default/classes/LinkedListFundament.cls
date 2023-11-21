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

    public Boolean add(Integer newElementData) {
        NodeElement elemForAdd = new NodeElement(newElementData);
        if(this.size == 0) {
            this.head = elemForAdd;
            size++;
            return True;
        } else if(this.size > 0) {
            this.tail = elemForAdd;
            return True;
        } else {
            System.debug('Can\'t add element');
            return False;
        }
    }

    public void add(Integer index, NodeElement nodeElem) {
        System.debug('Null');
    }

    public void addAll(List<String> innerList) {
        System.debug('Null');
    }
    public void addAll(Set<String> innerList) {
        System.debug('Null');
    }

    public void clear(){
        this.tail = null;
        this.head = null;
    }

    // public void clone() {
    //     System.debug('Null');
    // }

    public void contains() {
        System.debug('Null');
    }

    public void size() {
        System.debug('Null');
    }

    public void deepClone() {
        System.debug('Null');
    }

    public void equals(List<NodeElement> equalsList) {
        System.debug('Null');
    }

    public void  get(Integer index) {
        System.debug('Null');
    }

    public void getSObjectType() {
        System.debug('Null');
    }

    public void hashCode() {
        System.debug('Null');
    }

    public void indexOf(NodeElement elementForSearch) {
        System.debug('Null');
    }

    public Boolean isEmpty() {
        return False;
    }

    public void iterator() {
        System.debug('Null');
    }

    public void remove(Integer index) {
        System.debug('Null');
    }

    public void sort() {
        System.debug('Null');
    }
}