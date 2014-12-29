# Setup

```
sudo apt-get install lua5.1
sudo apt-get install luarocks
sudo luarocks install lunit
```

# Features

## Primitives
   - values
   
## Means of Combination
   - tables

## Means of Abstraction
   - functions

# Pros
- TCO
- defaulting variables to outer scope is the right thing to do

# Cons
- despite TCO, [can't `cdr` down a table](http://stackoverflow.com/questions/12372788/in-lua-how-to-get-the-tail-of-an-array-without-copying-it), because you can't efficiently get the tail

# Tangents

[Extending Vs. Embedding](http://twistedmatrix.com/users/glyph/rant/extendit.html)

# Conclusions

- it's a configuration/plugin language
- meant to provide extensibility by novices
- abstractive power not a top priority



