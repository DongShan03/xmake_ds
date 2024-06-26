template <typename T> //有序向量（区间）的归并
void Vector<T>::merge(Rank lo, Rank mi, Rank hi)
{ //各自有序的子向量[lo, mi)和[mi, hi)
    T* A = _elem + lo; //合并后的向量A[0, hi - lo) = _elem[lo, hi)
    int lb = mi - lo;
    T* B = new T[lb]; //前子向量B[0, lb) = _elem[lo, mi)
    for (Rank i = 0; i < lb; i++)
    {
        B[i] = A[i]; //复制前子向量
    }
    int lc = hi - mi;
    T* C = _elem + mi; //后子向量C[0, lc) = _elem[mi, hi)
    for (Rank i = 0, j = 0, k = 0; j < lb; ) //归并：反复从B和C首元素中取出更小者
    {
        A[i++] = (lc <= k || B[j] <= C[k]) ? B[j++] : C[k++]; //将其归入A中
    }
    delete[] B; //释放临时空间B
}


template <typename T> //向量归并排序
void Vector<T>::mergeSort(Rank lo, Rank hi)
{ //0 <= lo < hi <= size
    /*DSA*/ //printf ( "\tMERGEsort [%3d, %3d)\n", lo , hi );
    if (hi - lo < 2)
    {
        return; //单元素区间自然有序，否则...
    }
    int mi = (lo + hi) / 2; //以中点为界
    mergeSort(lo, mi);
    mergeSort(mi, hi); //分别排序
    merge(lo, mi, hi); //归并
}
