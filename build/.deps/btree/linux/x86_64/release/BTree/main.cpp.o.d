{
    depfiles_gcc = "main.o: BTree/main.cpp BTree/headers/btree.h BTree/headers/btnode.h  BTree/headers/../../BinaryTree/headers/bintree.h  BTree/headers/../../BinaryTree/headers/binnode.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/stack.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/vector.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/visit.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/fibSearch.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/fib.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/binSearch.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/increase.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/permute.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/compare.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/shrink.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/expand.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/copyFrom.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/bubbleSort.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/find.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/search.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/max.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/mergeSort.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/quickSort.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/selectionSort.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/shellSort.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/remove.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/sort.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/insert.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/unsort.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/deduplicate.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/traverse.h  BTree/headers/../../BinaryTree/headers/../../Stack/headers/../../Vector/headers/uniquify.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/queue.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/list.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/listnode.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/visit.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/compare.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/init.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/insert.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/clear.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/copyNodes.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/mergeSort.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/insertionSort.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/selectionSort.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/find.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/search.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/selectMax.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/remove.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/sort.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/deduplicate.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/reverse.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/uniquify.h  BTree/headers/../../BinaryTree/headers/../../Queue/headers/../../List/headers/traverse.h  BTree/headers/../../BinaryTree/headers/goAlongVine.h  BTree/headers/../../BinaryTree/headers/gotoLeftmostLeaf.h  BTree/headers/../../BinaryTree/headers/visitAlongVine.h  BTree/headers/../../BinaryTree/headers/bninsert.h  BTree/headers/../../BinaryTree/headers/bnsize.h  BTree/headers/../../BinaryTree/headers/bnsucc.h  BTree/headers/../../BinaryTree/headers/bntravIn.h  BTree/headers/../../BinaryTree/headers/bntravPre.h  BTree/headers/../../BinaryTree/headers/bntravPost.h  BTree/headers/../../BinaryTree/headers/bntravLevel.h  BTree/headers/../../BinaryTree/headers/Double.h  BTree/headers/../../BinaryTree/headers/Hailstone.h  BTree/headers/../../BinaryTree/headers/randomBinTree.h  BTree/headers/../../BinaryTree/headers/randomPosiInBinTree.h  BTree/headers/../../BinaryTree/headers/visitAlongLeftBranch.h  BTree/headers/../../BinaryTree/headers/btvisit.h  BTree/headers/../../BinaryTree/headers/btattach.h  BTree/headers/../../BinaryTree/headers/btinsert.h  BTree/headers/../../BinaryTree/headers/btremove.h  BTree/headers/../../BinaryTree/headers/btsecede.h  BTree/headers/../../BinaryTree/headers/btupdateHeight.h  BTree/headers/btsearch.h BTree/headers/btinsert.h  BTree/headers/solveOverflow.h BTree/headers/solveUnderflow.h  BTree/headers/btremove.h\
",
    files = {
        "BTree/main.cpp"
    },
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-O3",
            "-std=c++14",
            "-IBTree/headers",
            "-DNDEBUG"
        }
    }
}