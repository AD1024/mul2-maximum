method Maximum(a: array<int>, len : int) returns (max: int)
requires 0 < len && a.Length == len
ensures (forall k:int :: 0 <= k < len ==> max >= a[k])
ensures (exists j:int :: 0 <= j < len && max == a[j])
{
  max := 0;
  var i := 0;
  while i < len
  {
    if max < a[i] {
      max := a[i];
    }
    i := i + 1;
  }
}
