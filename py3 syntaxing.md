[python3 coding](https://www.digitalocean.com/community/tutorial_series/how-to-code-in-python-3)  
[python3 oop](https://www.digitalocean.com/community/tutorial_series/object-oriented-programming-in-python-3)

shark.py
```python3
class Shark:
  def __init__(self, name):
    self.name = name
    print('Shark constructed.')

  def swim(self):
    print(self.name + ' is swimming.')

  def be_awesome(self):
    print(self.name + ' is being awesome.')

def main():
  sammy = Shark('Sammy')
  sammy.swim()
  carl = Shark('Carl')
  carl.be_awesome()                                                                                                

if __name__ == '__main__':
  main()
```
```
$ python3 shark.py
Shark constructed.
Sammy is swimming.
Shark constructed.
Carl is being awesome.
```
