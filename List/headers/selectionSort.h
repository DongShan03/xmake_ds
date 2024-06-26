
template <typename T> //列表的选择排序算法：对起始于位置p的n个元素排序
void List<T>::selectionSort(ListNodePosi(T) p, int n)
{ //valid(p) && rank(p) + n <= size

    ListNodePosi(T) head = p->pred;
    ListNodePosi(T) tail = p;
    for (int i = 0; i < n; i++)
    {
        tail = tail->succ; //待排序区间为(head, tail)
    }
    while (1 < n)
    {
        //在至少还剩两个节点之前，在待排序区间内
        ListNodePosi(T) max = selectMax(head->succ, n); //找出最大者（歧义时后者优先）
        insertB(tail, remove(max)); //将其移至无序区间末尾（作为有序区间新的首元素）
        //swap(tail->pred->data, selectMax( head->succ, n )->data );
        tail = tail->pred;
        n--;
    }
}
