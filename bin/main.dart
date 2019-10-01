// In these exercises we will pretend that we do not have access to the standard
// List class in Dart. Instead, we will implement our own list using 'links' as
// described below.

// Exercise 1: Create a class called 'Link' which has two fields.  Choose
// types for each field so that you can create an object structure that looks
// like this:
// https://s1.whiteboardfox.com/s/2ae37dc832647bad.png
//import 'dart:io';

class Link
{
 String value;
 Link next;
 Link(String s)
 {
   this.value=s;
   this.value=null;
 }
}

main() {
  // Exercise 2:  Create the object structure shown in the above link
  // including the variable called 'firstLink'

/* Link firstLink =Link();
 //Link secondLink =new Link();
 //Link thirdLink =new Link();
 firstLink.value='Raj';
 firstLink.next=Link();
 firstLink.next.value="Makiko";
 firstLink.next.next=Link();
 firstLink.next.next.value='Paul';
 firstLink.next.next.next=null;*/

  Link firstLink =Link('raj');
  Link secondLink =Link('Makiko');
  Link thirdLink =Link('Paul');
  firstLink.next=secondLink;
  secondLink.next=thirdLink;
  thirdLink.next=null;


}


// Exercise 3: Create a function which takes a Link parameter and prints out
// all the values in the list.  For example, if the function is given the
// firstLink variable, then it will print:
// Raj
// Makiko
// Paul
printLink(Link x)
{
 while(x.next!=null)
   {
     print(x.value);
     x=x.next;
   }
}


// Exercise 4: Create a function which takes a Link parameter and a String
// parameter, and adds another link to the end of the chain.  The new link
// value should be the String parameter passed into the function.typedef
addLink(Link x, String s)
{
  while(x.next!=null) //reach end of list
  {
    x=x.next;
  }
  Link newNode=Link(s);
  x.next=newNode;

  newNode.next=null;
}

// *** Stretch ****
// Exercise 5: Create a function called insert which takes a Link,
// an integer index and a String, and inserts a link at the given index
// in the chain.  For example, calling insert(firstLink, 2, "A") should
// update the chain structure to look like this:
// https://s1.whiteboardfox.com/s/77ff03ee231f2f60.png
insert(Link x,int index, String s)
{
  int i=1;
  int numberOfNodes=0;
  while(x.next!=null) //reach end of list
      {
    x=x.next;
    numberOfNodes++;
  }
  print("Number of Nodes=${numberOfNodes}");
  while(i<=index && index<=numberOfNodes)
    {
      x=x.next;
      i++;
    }
    Link temp= Link(s);
     temp.next=x.next;
    x.next=temp;
}