<!--
Graph to illustrate. idea is addictive. gather all possible info and concat them into a graph
-->

##Simple Graph

A->B->C

-----
<!--
Represent End of Graph
-->

##Simple Graph2

<!-- This is A connected to both B and C. Indentation matters-->
A
 ->B
 ->C

B->C

<!-- Same as above -->

A->B->C
 ->C

<!-- More complex cyclic graph-->

A
 ->B
    ->D
    ->E
      ->F->A
 ->C


<!-- Graph with Cycle -->

A->B->A

<!-- Git tree as use case, how to distiguish branch and master in case it is straight?-->
A<-B<-C<-D<-E
C<-C'<-D'<-E'




<!-- with markdown? parsing is hard. Also better separate node details & attrs with graph realationships -->
**A** -> B ->C


<!-- Learning from Git and going fancy-->

##Style 1, readable but very hard to parse?
upstream    A-B-C-D-E            A-B-C-D-E-F-G
                 \        ---->               \
your branch       C-D-E                        G

##Style 1 case 2, what if A connect to C
 ___
/   \
A-B-C
\ | /
  D


##Style2, hard to write

*  a
| \
| * b


