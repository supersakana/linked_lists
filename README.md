In CPU Science, one of the most basic and fundemental data structures is a linked list

The benefit of this data structure is that a list of elements can be easily inserted or removed without reallocation of any other elements.

A Linked List is a linear collection of data elements called nodes that "point" to the next node by means of a pointer.

Each node holds a single element of data anda a link/pointer to the next node in the list.

The head is the first node ,tail is the last. Below is a basic representation of a linked list...

NOTE Both Arrays and Linked Lists are linear data structures but what makes them different is how they use memory in our machines.

ARRAYS (Stactic Data Structures) - When an array is created, it needs a certain amount of memory. For example, if we had 7 letters stored in an array, we would need 7 bytes of memory in one contiguous block

LINKED LISTS (Dynamic Data Structures) - Dont need 7 bytes of memory all in one place they 7 bytes can be scattered therfore not taking up a single block.

[ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil

Ruby does NOT have a linked list class but can be created with similar functonality using arrays
https://www.sitepoint.com/rubys-missing-data-structure/
