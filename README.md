# Polygon-Calculator:
</br>

```ruby
Compiler    : Delphi10 Seattle, 10.1 Berlin, 10.2 Tokyo, 10.3 Rio, 10.4 Sydney, 11 Alexandria, 12 Athens
Components  : gl.pas, glex.pas, glu.pas
Discription : Polygon Calculator and Renderer
Last Update : 09/2025
License     : Freeware
```

</br>

In [geometry](https://en.wikipedia.org/wiki/Geometry), a polygon is a plane figure made up of line segments connected to form a [closed polygonal chain](https://en.wikipedia.org/wiki/Polygonal_chain#Closed).

The segments of a closed polygonal chain are called its [edges](https://en.wikipedia.org/wiki/Edge_(geometry)) or sides. The points where two edges meet are the polygon's vertices or corners. An n-gon is a polygon with n sides; for example, a [triangle](https://en.wikipedia.org/wiki/Triangle) is a 3-gon.

A [simple polygon](https://en.wikipedia.org/wiki/Simple_polygon) is one which does not intersect itself. More precisely, the only allowed intersections among the line segments that make up the polygon are the shared endpoints of consecutive segments in the polygonal chain. A simple polygon is the boundary of a region of the plane that is called a solid polygon. The interior of a solid polygon is its body, also known as a polygonal region or polygonal area. In contexts where one is concerned only with simple and solid polygons, a polygon may refer only to a simple polygon or to a solid polygon.

### Features:
* Get Polygon coordinates (Points, Areas)
* Render OpenGL Graphic to Bitmap
* Render Animate OpenGL Graphic to Bitmap Frames
* Render differnet Pixel Bit
* Control OpenGL GHrahic Axis

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

![Polygon](https://github.com/user-attachments/assets/89d856b3-ffb1-4169-8c48-13785a9f8560)

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


