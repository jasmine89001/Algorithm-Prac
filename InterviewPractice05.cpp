/*
Date: 08/15/2017

Company: Mathworks EDG Programming Challenge B

Question: Shape Classes
Given the shape class, to get area of rectangle and square in form of integer.
*/

#include <iostream>
using namespace std;

/* A complete demonstration - base class, derived classes (and derived class
from derived class too), with an array of various objects of the similar types
and code to access those objects */

class Shape {
        public:
                float width;
                float height;
                // bool cached;   Later ;-)
                virtual int getArea() {return 0;} ; };
class Circle: public Shape {
        public:
                Circle(float radius);
                int getArea() ; };
class Rectangle: public Shape {
        public:
                Rectangle(float width, float height);
                int getArea() ; };
class Square: public Rectangle {
        public:
                Square(float size); };

Square::Square (float size) : Rectangle(size, size) { }
Rectangle::Rectangle(float width, float height) {
        this->width = width; this->height = height; }
Circle::Circle (float radius) {
        this->width = this->height = radius * 2.0; }

int Circle::getArea() { return (int)(width * width * 3.14159265 / 4.0); }
int Rectangle::getArea() { return (int)(width * height) ; }

int main (int argc, char **argv) {

        Shape * papers[5];

        Circle michael(15.0);
        Rectangle andrew(34.0, 2.0);
        Circle ann(2.3);
        Square tim(3.33);
        Rectangle jonathan(5.61, 7.92);

        papers[0] = &michael; papers[1] = &andrew; papers[2] = &ann;
        papers[3] = &tim; papers[4] = &jonathan;

        for (int k = 0; k < 5; k++) {
                cout << "Area is " << papers[k]->getArea() << endl;
        }

}

/*  Sample Output
Area is 706
Area is 68
Area is 16
Area is 11
Area is 44
*/
