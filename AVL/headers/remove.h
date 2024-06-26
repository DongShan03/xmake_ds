
template <typename T>
bool AVL<T>::remove(const T& e)
{ //从AVL树中删除关键码e
    BinNodePosi(T)& x = BST<T>::search(e);
    if (!x)
    {
        return false; //确认目标存在（留意_hot的设置）
    }
    BST_removeAt(x, BST<T>::_hot);
    BinTree<T>::_size--; //先按BST规则删除之（此后，原节点之父_hot及其祖先均可能失衡）
    for (BinNodePosi(T) g = BST<T>::_hot; g; g = g->parent)
    { //从_hot出发向上，逐层检查各代祖先g
        if (!AvlBalanced(*g)) //一旦发现g失衡，则（采用“3 + 4”算法）使之复衡，并将该子树联至
        {
            if (IsRoot(*g))
            {
                g = BinTree<T>::_root = BST<T>::rotateAt(tallerChild(tallerChild(g)));
            }
            else if (IsLChild(*g))
            {
                g = (*g).parent->lc = BST<T>::rotateAt(tallerChild(tallerChild(g)));
            }
            else {
                g = (*g).parent->rc = BST<T>::rotateAt(tallerChild(tallerChild(g)));
            }
        }
        BST<T>::updateHeight(g); //并更新其高度（注意：即便g未失衡，高度亦可能降低）
    } //可能需做Ω(logn)次调整——无论是否做过调整，全树高度均可能降低
    return true; //删除成功
} //若目标节点存在且被删除，返回true；否则返回false
