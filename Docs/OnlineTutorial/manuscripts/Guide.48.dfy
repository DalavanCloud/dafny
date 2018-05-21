method Find(a: array<int>, key: int) returns (index: int)
   requires a != null;
   ensures 0 <= index ==> index < a.Length && a[index] == key;
   ensures index < 0 ==> forall k :: 0 <= k < a.Length ==> a[k] != key;
{
   index := 0;
   while (index < a.Length)
   {
      if (a[index] == key) { return; }
      index := index + 1;
   }
   index := -1;
}