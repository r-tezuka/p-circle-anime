class Point{
    float x, y, v;
    
    Point(float x, float y, float v) {
        this.x = x;
        this.y = y;
        this.v = v;
    }
    
    void draw() {
        circle(x, y, 5);
    }

}
