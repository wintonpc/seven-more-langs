# Setup

```
sudo apt-get install lua5.1
sudo apt-get install luarocks
sudo luarocks install lunit
```

# Pros
- TCO
- defaulting variables to outer scope is the right thing to do

# Cons
- despite TCO, [can't `cdr` down a table](http://stackoverflow.com/questions/12372788/in-lua-how-to-get-the-tail-of-an-array-without-copying-it), because you can't efficiently get the tail

