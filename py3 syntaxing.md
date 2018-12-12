[python3 coding](https://www.digitalocean.com/community/tutorial_series/how-to-code-in-python-3)  
[python3 oop](https://www.digitalocean.com/community/tutorial_series/object-oriented-programming-in-python-3)

shark.py
```python3
class Shark:
  def __init__(self):
    print('This is the constructor method.')

  def swim(self):
    print('The shark is swimming.')

  def be_awesome(self):
    print('The shark is being awesome.')

def main():
  sammy = Shark()
  sammy.swim()
  sammy.be_awesome()

if __name__ == '__main__':
  main()
```
