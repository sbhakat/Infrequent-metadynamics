# Infrequent-metadynamics

First step:

Run infrequent metadynamics using the `plumed.dat` file. The basic idea of infrequent metadynamics is that the transition state along CV should be bias free. Please see https://pubs.acs.org/doi/10.1021/ct500040r for theoretical description of the method.

In our case we will use `\chi_1` and `\chi_2` angle of Tyrosine as CV. Our aim is to calculate transition time associated with **normal** to **flip** transition as shown in the following picture.

The flipping is defined `-2.6 > \chi_1 > 2.6` which corresponds to the following code in the `plumed.dat`   

```
COMMITTOR ...
  ARG=chi1_78
  STRIDE=100
  # Flipped Basin 1
  BASIN_LL1=-3.14
  BASIN_UL1=-2.6
  # Flipped basin 2
  BASIN_LL2=2.6
  BASIN_UL2=3.14
  FILE=commit.log FMT=%8.4f
... COMMITTOR
```



