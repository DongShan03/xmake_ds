#pragma once
#include "../../BST/headers/bst.h"

using namespace std;

template <typename T>
class RedBlack : public BST<T>
{
    //RedBlack树模板类
protected:
    void solveDoubleRed(BinNodePosi(T) x); //双红修正
    void solveDoubleBlack(BinNodePosi(T) x); //双黑修正
    int updateHeight(BinNodePosi(T) x); //更新节点x的高度
public:
    BinNodePosi(T) insert(const T& e); //插入（重写）
    bool remove(const T& e); //删除（重写）
    // BST::search()等其余接口可直接沿用
};

#include "updateHeight.h"
#include "solveDoubleBlack.h"
#include "solveDoubleRed.h"
#include "insert.h"
#include "remove.h"
#include "rbtvisit.h"


