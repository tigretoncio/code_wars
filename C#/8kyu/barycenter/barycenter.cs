/*

The medians of a triangle are the segments that unit the vertices with the midpoint of their opposite sides. The three medians of a triangle intersect at the same point, called the barycenter or the centroid. Given a triangle, defined by the cartesian coordinates of its vertices we need to localize its barycenter or centroid.

The function bar_triang() or barTriang or bar-triang, receives the coordinates of the three vertices A, B and C as three different arguments and outputs the coordinates of the barycenter O in an array [xO, yO]

This is how our asked function should work: the result of the coordinates should be expressed up to four decimals, (rounded result).

You know that the coordinates of the barycenter are given by the following formulas.

source: imgur.com

For additional information about this important point of a triangle see at: (https://en.wikipedia.org/wiki/Centroid)

Let's see some cases:

The given points form a real or a degenerate triangle but in each case the above formulas can be used.

Enjoy it and happy coding!!

*/

using System;

public class Barycenter
{
  public static double[] BarTriang(double[] x, double[] y, double[] z)
  {
    // your code
    double x0, y0;
    x0 = (x[0] + y[0] + z[0])/3;
    y0 = (x[1] + y[1] + z[1])/3;

    double[] result = { Math.Round(x0,4), Math.Round(y0,4) };

    return result;
  }
}

public class Program
{
  public static void Main()
  {
    double[] res;
    res = Barycenter.BarTriang(new double[]{4,6}, new double[] {12,4}, new double[] {10,10});
    Console.WriteLine($"Barycenter x: {res[0]}, Barycenter y: {res[1]}");
  }
}

// Tests
/*
using System;
using NUnit.Framework;

[TestFixture]
public static class BarycenterTests {

[Test]
    public static void test1() {
      Console.WriteLine("Fixed Tests");
        Assert.AreEqual(new double[] {8.6667, 6.6667}, Barycenter.BarTriang(
          new double[]{4,6}, new double[]{12,4}, new double[]{10,10}));
        Assert.AreEqual(new double[] {7.3333, 4.6667}, Barycenter.BarTriang(
                  new double[]{4,2}, new double[]{12,2}, new double[]{6,10}));
    }
}


*/