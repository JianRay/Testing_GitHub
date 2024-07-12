@echo off
setlocal enabledelayedexpansion

REM Prompt user to select a shape
echo Select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
set /p "choice=Enter your choice (1/2/3): "

if "%choice%"=="1" (
    REM Calculate area of a circle
    set /p "radius=Enter the radius of the circle: "
    set /a "area=3*!radius!*!radius!"
    echo Area of the circle with radius !radius! units: !area! square units
) else if "%choice%"=="2" (
    REM Calculate area of a triangle
    set /p "side1=Enter the length of side 1: "
    set /p "side2=Enter the length of side 2: "
    set /p "side3=Enter the length of side 3: "
    set /a "s=(side1+side2+side3)/2"
    set /a "area=sqrt(s*(s-side1)*(s-side2)*(s-side3))"
    echo Area of the triangle: !area! square units

    REM Determine triangle type
    if "%side1%"=="%side2%" (
        echo It is an equilateral triangle.
    ) else if "%side1%"=="%side2%"^&"%side2%"=="%side3%" (
        echo It is an isosceles triangle.
    ) else (
        echo It is a scalene triangle.
    )
) else if "%choice%"=="3" (
    REM Calculate area of a quadrilateral
    set /p "length=Enter the length of the quadrilateral: "
    set /p "width=Enter the width of the quadrilateral: "
    set /a "area=length*width"
    echo Area of the quadrilateral: !area! square units

    REM Determine quadrilateral type
    if "%length%"=="%width%" (
        echo It is a square.
    ) else (
        echo It is a rectangle.
    )
) else (
    echo Invalid choice. Please select 1, 2, or 3.
)

pause
