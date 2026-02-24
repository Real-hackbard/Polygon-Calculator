# Polygon-Calculator:

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) ![10 Seattle](https://github.com/user-attachments/assets/c70b7f21-688a-4239-87c9-9a03a8ff25ab) ![10 1 Berlin](https://github.com/user-attachments/assets/bdcd48fc-9f09-4830-b82e-d38c20492362) ![10 2 Tokyo](https://github.com/user-attachments/assets/5bdb9f86-7f44-4f7e-aed2-dd08de170bd5) ![10 3 Rio](https://github.com/user-attachments/assets/e7d09817-54b6-4d71-a373-22ee179cd49c)  ![10 4 Sydney](https://github.com/user-attachments/assets/e75342ca-1e24-4a7e-8fe3-ce22f307d881) ![11 Alexandria](https://github.com/user-attachments/assets/64f150d0-286a-4edd-acab-9f77f92d68ad) ![12 Athens](https://github.com/user-attachments/assets/59700807-6abf-4e6d-9439-5dc70fc0ceca)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) ![None](https://github.com/user-attachments/assets/30ebe930-c928-4aaf-a8e1-5f68ec1ff349)  
![Description](https://github.com/user-attachments/assets/dbf330e0-633c-4b31-a0ef-b1edb9ed5aa7) ![Polygon Calculator](https://github.com/user-attachments/assets/34eebaf0-46c8-402c-a058-275ddcd44294)
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) ![022026](https://github.com/user-attachments/assets/90c88085-69f5-4332-b090-2de107ca7f86)  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)  

</br>

In [geometry](https://en.wikipedia.org/wiki/Geometry), a polygon is a plane figure made up of line segments connected to form a [closed polygonal chain](https://en.wikipedia.org/wiki/Polygonal_chain#Closed).

The segments of a closed polygonal chain are called its [edges](https://en.wikipedia.org/wiki/Edge_(geometry)) or sides. The points where two edges meet are the polygon's vertices or corners. An n-gon is a polygon with n sides; for example, a [triangle](https://en.wikipedia.org/wiki/Triangle) is a 3-gon.

A [simple polygon](https://en.wikipedia.org/wiki/Simple_polygon) is one which does not intersect itself. More precisely, the only allowed intersections among the line segments that make up the polygon are the shared endpoints of consecutive segments in the polygonal chain. A simple polygon is the boundary of a region of the plane that is called a solid polygon. The interior of a solid polygon is its body, also known as a polygonal region or polygonal area. In contexts where one is concerned only with simple and solid polygons, a polygon may refer only to a simple polygon or to a solid polygon.

### Features:
* Get Polygon coordinates (Points, Areas)
* Render OpenGL Graphic to Bitmap
* Render Animate OpenGL Graphic to Bitmap Frames
* Render differenet Pixel Bit
* Control OpenGL Graphic Axis

</br>

![Polygon Calculator](https://github.com/user-attachments/assets/138b58f5-ba40-4bad-abfc-ca5026b21dfa)

</br>

### Points:
Any polygon has as many corners as it has sides. Each corner has several angles. The two most important ones are:
* [Interior angle](https://en.wikipedia.org/wiki/Internal_and_external_angles) – The sum of the interior angles of a simple n-gon is (n − 2) × π [radians](https://en.wikipedia.org/wiki/Polygon) or (n − 2) × 180 degrees. This is because any simple n-gon ( having n sides ) can be considered to be made up of (n − 2) triangles, each of which has an angle sum of π radians or 180 [degrees](https://en.wikipedia.org/wiki/Degree_(angle)).

### Areas:
* The signed area depends on the ordering of the vertices and of the orientation of the plane. Commonly, the positive [orientation](https://en.wikipedia.org/wiki/Orientation_(vector_space)) is defined by the (counterclockwise) rotation that maps the positive x-axis to the positive y-axis. If the vertices are ordered counterclockwise (that is, according to positive orientation), the signed area is positive; otherwise, it is negative. In either case, the area formula is correct in [absolute value](https://en.wikipedia.org/wiki/Absolute_value). This is commonly called the shoelace formula or [surveyor's formula](https://en.wikipedia.org/wiki/Shoelace_formula).

### Code Example:
```pascal
procedure ppyload;
var ms1: TResourcestream;
    i:integer;
    ww:real;
begin
   ms1 := TResourceStream.Create(hinstance,'x'+inttostr(nr),'RT_RCDATA');
    try
      ms1.readbuffer(ppy,ms1.size);
      pzahl:=(ms1.size-2) div 12;
  finally
    ms1.Free;
  end;
  ppx:=@ppy;
  smax:=0;
  for i:=0 to pzahl-1 do begin
    ww:=sqr(ppx[i,0])+sqr(ppx[i,1])+sqr(ppx[i,2]);
    if ww>smax then smax:=ww;
  end;
  smax:=sqrt(smax);
end;

//Read Areas Coordinates from *.res
procedure areaload;
var ms1: TResourcestream;
begin
   ms1 := TResourceStream.Create(hinstance,'e'+inttostr(nr),'RT_RCDATA');
    try
      ms1.readbuffer(fppy,ms1.size);
      punktzahl:=(ms1.size-2) div 2;
  finally
    ms1.Free;
  end;
  flaechenfeld:=@fppy;
end;
```

</br>

### OpenGL:
The OpenGL specification describes an abstract [application programming interface (API)](https://en.wikipedia.org/wiki/API) for drawing 2D and 3D graphics. It is designed to be implemented mostly or entirely using [hardware acceleration](https://en.wikipedia.org/wiki/Hardware_acceleration) such as a GPU, although it is possible for the API to be implemented entirely in software running on a CPU.

### Render to Bitmap Frames:
In typical [uncompressed](https://en.wikipedia.org/wiki/Image_compression) Bitmaps, image [Pixels](https://en.wikipedia.org/wiki/Pixel) are generally stored with a variable number of bits per pixel which identify its color (the [color depth](https://en.wikipedia.org/wiki/Color_depth)). Pixels of 8 bits and fewer can represent either grayscale or [indexed color](https://en.wikipedia.org/wiki/Indexed_color). An [alpha channel](https://en.wikipedia.org/wiki/Alpha_compositing) (for transparency) may be stored in a separate bitmap, where it is similar to a grayscale bitmap, or in a fourth channel that, for example, converts 24-bit images to 32 bits per pixel.

### Code Example:
```pascal
procedure TForm1.Button1Click(Sender: TObject);
var
  Bitmap: TBitmap;
  DC: HDC;
  FileName: string;
begin
  // Render Bitmap Picture Image
  Bitmap := TBitmap.Create;
  try
    Assert(HandleAllocated);
    DC := GetWindowDC(Handle);
    Win32Check(DC <> 0);

    if RadioButton4.Checked = true then Bitmap.PixelFormat := pf4bit;
    if RadioButton5.Checked = true then Bitmap.PixelFormat := pf8bit;
    if RadioButton6.Checked = true then Bitmap.PixelFormat := pf24bit;
    if RadioButton7.Checked = true then Bitmap.PixelFormat := pf32bit;

    if CheckBox2.Checked = true then begin
      Bitmap.SetSize(Width-ListBox1.Width, Height-280);
      Win32Check(BitBlt(Bitmap.Canvas.Handle, 0, 0,
                Width-ListBox1.Width, Height-280,
                DC, 50, 50, SRCCOPY));
    end;

    if CheckBox2.Checked =false then begin
      Bitmap.SetSize(Width-100, Height-280);
      Win32Check(BitBlt(Bitmap.Canvas.Handle, 0, 0,
                Width-100, Height-280,
                DC, 50, 50, SRCCOPY));
    end;

    FileName := '.' + GraphicExtension(TBitmap);
    if SaveDialog1.Execute then Bitmap.SaveToFile(SaveDialog1.FileName + FileName);
  finally
    ReleaseDC(Handle, DC);
    Bitmap.Free;
  end;
end;
```

</br>

### Classification:
* Number of sides
Polygons are primarily classified by the number of sides.

* Convexity and intersection
Polygons may be characterized by their convexity or type of non-convexity:

* [Convex](https://en.wikipedia.org/wiki/Convex_polygon): any line drawn through the polygon (and not tangent to an edge or corner) meets its boundary exactly twice. As a consequence, all its interior angles are less than 180°. Equivalently, any line segment with endpoints on the boundary passes through only interior points between its endpoints. This condition is true for polygons in any geometry, not just Euclidean.
* Non-convex: a line may be found which meets its boundary more than twice. Equivalently, there exists a line segment between two boundary points that passes outside the polygon.
* [Simple](https://en.wikipedia.org/wiki/Simple_polygon): the boundary of the polygon does not cross itself. All convex polygons are simple.
* [Concave](https://en.wikipedia.org/wiki/Concave_polygon): Non-convex and simple. There is at least one interior angle greater than 180°.
* [Star-shaped](https://en.wikipedia.org/wiki/Star-shaped_polygon): the whole interior is visible from at least one point, without crossing any edge. The polygon must be simple, and may be convex or concave. All convex polygons are star-shaped.
* [Self-intersecting](https://en.wikipedia.org/wiki/List_of_self-intersecting_polygons): the boundary of the polygon crosses itself. The term complex is sometimes used in contrast to simple, but this usage risks confusion with the idea of a * [complex polygon](https://en.wikipedia.org/wiki/Complex_polytope) as one which exists in the complex [Hilbert](https://en.wikipedia.org/wiki/Hilbert_space) plane consisting of two complex dimensions.
* [Star polygon](https://en.wikipedia.org/wiki/Star_polygon): a polygon which self-intersects in a regular way. A polygon cannot be both a star and star-shaped.

</br>

![Polygon](https://github.com/user-attachments/assets/89d856b3-ffb1-4169-8c48-13785a9f8560)

</br>

### Equality and symmetry:
* [Equiangular](https://en.wikipedia.org/wiki/Equiangular_polygon): all corner angles are equal.
* [Equilateral](https://en.wikipedia.org/wiki/Equilateral_polygon): all edges are of the same length.
* [Regular](https://en.wikipedia.org/wiki/Regular_polygon): both equilateral and equiangular.
* [Cyclic](https://en.wikipedia.org/wiki/Concyclic_points): all corners lie on a single circle, called the circumcircle.
* [Tangential](https://en.wikipedia.org/wiki/Tangential_polygon): all sides are tangent to an inscribed circle.
* [Isogonal or vertex-transitive](https://en.wikipedia.org/wiki/Isogonal_figure): all corners lie within the same symmetry orbit. The polygon is also cyclic and equiangular.
* [Isotoxal or edge-transitive](https://en.wikipedia.org/wiki/Edge-transitive): all sides lie within the same [symmetry orbit](https://en.wikipedia.org/wiki/Symmetry_orbit). The polygon is also equilateral and tangential.

The property of regularity may be defined in other ways: a polygon is regular if and only if it is both isogonal and isotoxal, or equivalently it is both cyclic and equilateral. A non-convex regular polygon is called a regular star polygon.
