import requests
from re import search
from lxml import html
from getpass import getpass
from Crypto.Hash import SHA1


sn = input('r0t user: ')
pw = getpass()

logindata = {'username':sn, 'password':pw}

with requests.Session() as s:
  p = s.post('https://ringzer0ctf.com/login', data=logindata)

  challenge = s.get('https://ringzer0ctf.com/challenges/57')
  parse = html.fromstring(challenge.text)
  parse2 = parse.xpath('//div[@class="message"]/text()')
  challengehash = parse2[1].strip()
  challengesalt = parse2[5].strip()
  print('hash ' + challengehash)
  print('salt ' + challengesalt)

  for i in range(100, 10000):
    myhash = SHA1.new()
    myhash.update((str(i) + challengesalt).encode())
    if myhash.hexdigest() == challengehash:
      print('match at', i)
      answer = i
      break

  response = s.get('https://ringzer0ctf.com/challenges/57/' + str(i))
  flag = search("FLAG-.{24}",response.text).group()
  print(flag)

