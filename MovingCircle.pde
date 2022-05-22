class MovingCircle {
    Point[] ps;
    float r;
    float t;
    MovingCircle(int n, float r) {
        this.r = r;
        this.t = 0;
        ps = new Point[n];
        for (int i=0; i<n; i++) {
            ps[i] = new Point(0, 0, 0);
        }
    }

    void move() {
        for (int i=0; i<ps.length; i++) {
            float factor = sin(PI * t / 50); // -1 <= factor <= 1
            ps[i].v += PI * factor / 2 + PI/2; // 0 <= v <= PI
            ps[i].x = r * cos(PI * ps[i].v / 100);
            ps[i].y = r * sin(PI * ps[i].v / 100);
        }
        t += 1;
    }

    void draw() {
        for (Point p: ps) {
            p.draw();
        }
    }
}
