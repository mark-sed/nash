# Natshell (nash)

Superset of Bourn Again Shell (bash) with modern syntax and features.

Nathsell adds highlighting, autocomplete, built-in functions for better portability and easy use of chat gpt right in the terminal.

## Syntax

Nash uses `?` to determine non bash syntax where ever there could be collision.

One could use `?` on every line but it is not encouraged.

Main usage can be for arithmetics or variables.
```
? a = 4.211483
? 42 ** 3 + $a
? $a * 4.0
```

In nash `;` works the same as a new line.

```
? a = 42; ? b = 8
```

Arithmetics within nash constructs don't require `?`.

### If

```
if(file_exists "$a") {
    echo "It's a file"
}
elif(dir_exists "$a") {
    echo "It's a folder"
}
else {
    echo "No file nor folder " "$a"
}
```

```
if($a * 3 == 42) echo "Yes"
```

### Functions

Functions can contain parameter list and allow for overloading.

Using `...` makes the function parameters work like bash function.

```
fun foo(a, b) {
    echo ? $a + $b
    return 0
}

fun foo(a) {
    echo $a
    return 0
}

fun foo(...) {
    echo $@
    return 1 
}

? f = foo(4, 8)

fun bar(a, ...) {
    echo $a
    return $a
}
```

### Variables

```
?a = 5 * $c
```

### Math

```
?pi = 3.14159265

echo $a ** 2 * $pi
echo $a ** 2 * $_M_PI
```

__Operators__:
* (_Name_ - _Operator_, _Int function_, _Float function_)
* Addition - `+`, `iadd`, `fadd`
* Subtraction - `-`, `isub`, `fsub`
* Multiplication - `*`, `imul`, `fmul`
* Division - `div`, `idiv`, `fdiv`
* Exponentiation - `**`, `pow`
* Modulo - `mod`, `imod`, `fmod`
* String concatenation - `++`, `concat`

## Types

### String

### Int

### Float

### Bool

### Dict

### List

## Chat GPT