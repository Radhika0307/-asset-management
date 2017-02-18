package p1;
public class Aprotectedaccess2 extends Aprotected
{
public static void main(String args[])
{
Aprotectedaccess2 a1=new Aprotectedaccess2();
a1.show();
System.out.println("p2 default in p1:a"+a1.a);
System.out.println("p2 public in p1:b"+a1.b);
//System.out.println("p2 private in p1:c"+a1.c);
System.out.println("p2 protected in p1:d"+a1.d);
}
}