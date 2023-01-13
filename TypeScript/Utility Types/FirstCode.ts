interface Point {
  x: number;
  y: number;
}

let pointPart: Partial<Point> = {};
pointPart.x = 10;
