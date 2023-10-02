method Multiply2(n:int) returns (r:int)
requires 0 <= n; // precondition
ensures r == 2*n; // postcondition
{
  r := 0;
  var i: int := 0;
  while (i < n)
  // add your invariants here via
  // invariant <inv>
  {
    r := r + 2;
    i := i + 1;
  }
}
