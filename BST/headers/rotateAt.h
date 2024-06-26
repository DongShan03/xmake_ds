template <typename T> BinNodePosi(T) BST<T>::rotateAt(BinNodePosi(T) v) { //v为非空孙辈节点
    /*DSA*/if (!v) { printf("\a\nFail to rotate a null node\n"); exit(-1); }
    BinNodePosi(T) p = v->parent; BinNodePosi(T) g = p->parent; //视v、p和g相对位置分四种情况
    if (IsLChild(*p)) /* zig */
        if (IsLChild(*v)) { /* zig-zig */ //*DSA*/printf("\tzIg-zIg: ");
            p->parent = g->parent; //向上联接
            return connect34(v, p, g, v->lc, v->rc, p->rc, g->rc);
        }
        else { /* zig-zag */  //*DSA*/printf("\tzIg-zAg: ");
            v->parent = g->parent; //向上联接
            return connect34(p, v, g, p->lc, v->lc, v->rc, g->rc);
        }
    else  /* zag */
        if (IsRChild(*v)) { /* zag-zag */ //*DSA*/printf("\tzAg-zAg: ");
            p->parent = g->parent; //向上联接
            return connect34(g, p, v, g->lc, p->lc, v->lc, v->rc);
        }
        else { /* zag-zig */  //*DSA*/printf("\tzAg-zIg: ");
            v->parent = g->parent; //向上联接
            return connect34(g, v, p, g->lc, v->lc, v->rc, p->rc);
        }
}


