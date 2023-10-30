public with sharing class NodeElement {
    public Integer elementData;
    public NodeElement nextElement;
    public NodeElement previos;

    public NodeElement(Integer elementData) {
            this.elementData = elementData;
            this.nextElement = null;
            this.previos = null;
        }
}