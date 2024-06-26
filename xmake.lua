add_rules("mode.debug", "mode.release")
set_languages("c++14")

target("vector")
    set_kind("static")
    add_includedirs("Vector/headers", {public=True})
    add_files("Vector/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("list")
    set_kind("static")
    add_includedirs("List/headers", {public=True})
    add_files("List/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("stack")
    set_kind("static")
    add_deps("vector")
    add_includedirs("Stack/headers", {public=True})
    add_files("Stack/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("queue")
    set_kind("static")
    add_deps("list")
    add_includedirs("Queue/headers", {public=True})
    add_files("Queue/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("bintree")
    set_kind("static")
    add_deps("stack", "queue")
    add_includedirs("BinaryTree/headers", {public=True})
    add_files("BinaryTree/main.cpp")
    set_targetdir("$(projectdir)/.build")
    
target("bitmap")
    set_kind("static")
    add_includedirs("Bitmap/headers", {public=True})
    add_files("Bitmap/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("bst")
    set_kind("static")
    add_deps("bintree")
    add_includedirs("BST/headers", {public=True})
    add_files("BST/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("avl")
    set_kind("static")
    add_deps("bst")
    add_includedirs("AVL/headers", {public=True})
    add_files("AVL/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("splay")
    set_kind("static")
    add_deps("bst")
    add_includedirs("Splay/headers", {public=True})
    add_files("Splay/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("btree")
    set_kind("static")
    add_deps("bst")
    add_includedirs("BTree/headers", {public=True})
    add_files("BTree/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("rbtree")
    set_kind("binary")
    add_deps("bst")
    add_includedirs("RBTree/headers", {public=True})
    add_files("RBTree/main.cpp")
    set_targetdir("$(projectdir)/.build")
    -- 报错double free or corruption (fasttop)
    -- error: execv(/home/dongshan/Documents/Cproject/DS/.build/rbtree ) failed(-1)
    -- 问题出在删除节点时

target("hashtable")
    set_kind("static")
    add_includedirs("HashTable/headers", {public=True})
    add_files("HashTable/main.cpp")
    set_targetdir("$(projectdir)/.build")

target("heap")
    set_kind("static")
    add_deps("vector")
    add_includedirs("Heap/headers", {public=True})
    add_files("Heap/main.cpp")
    set_targetdir("$(projectdir)/.build")

-- target("synthesis")
--     set_kind("binary")
--     add_deps("vector", "list", "stack", "queue", "bitmap", "bintree", "bst", "avl", "hashtable", "heap", "splay", "btree", "rbtree")
--     add_files("main.cpp")
--     set_targetdir("$(projectdir)/.build")

after_run(function ()
    os.rm("$(projectdir)/build")
    
end)