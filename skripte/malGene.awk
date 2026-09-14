{
  start = $1
  ende = $2
  strang = $3
  if (strang == "+")
    y = 1
  else
    y = -1
  printf "%d\t%d\n", start, 0
  printf "%d\t%d\n", start, y
  printf "%d\t%d\n", ende, y
  printf "%d\t%d\n", ende, 0
}
END {
  printf "1\t0\n"
}
