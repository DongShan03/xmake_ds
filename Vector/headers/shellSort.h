

template <typename T> //向量希尔排序
void Vector<T>::shellSort(Rank lo, Rank hi)
{ //0 <= lo < hi <= size <= 2^30
    /*DSA*/ printf("\tSHELLsort [%3d, %3d)\n", lo, hi);
    for (int d = 0x3FFFFFFF; 0 < d; d >>= 1) //PS Sequence: { 1, 3, 7, 15, ..., 1073741823 }
    {
        for (int j = lo + d; j < hi; j++)
        { //for each j in [lo+d, hi)
            T x = _elem[j];
            int i = j - d;
            while (lo <= i && _elem[i] > x)
            {
                _elem[i + d] = _elem[i];
                i -= d;
            }
            _elem[i + d] = x; //insert [j] into its subsequence
        }
    }
}