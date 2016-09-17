# -*- coding: utf-8 -*-

import cookielib, urllib2, urllib
import os


class SmartRedirectHandler(urllib2.HTTPRedirectHandler):
    def http_error_302(self, req, fp, code, msg, headers):
        result = urllib2.HTTPRedirectHandler.http_error_302(self, req, fp,
                                                                 code, msg,
                                                                 headers)
        result.status = code
        result.headers = headers
        return result
        
        
        

fake_header = [
    ('User-Agent', 'Mozilla/5.0 (Macintosh Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
    ('Content-Type', 'application/x-www-form-urlencoded'),
    ('Cache-Control', 'no-cache'),
    ('Accept', '*/*'),
    ('Connection', 'Keep-Alive'),
]
cookie_filename = 'youdao_cookie'


# first url request
cj = cookielib.LWPCookieJar(cookie_filename)
if os.access(cookie_filename, os.F_OK):
    cj.load(cookie_filename, ignore_discard=True, ignore_expires=True)
opener = urllib2.build_opener(
    SmartRedirectHandler(),
    urllib2.HTTPHandler(debuglevel=0),
    urllib2.HTTPSHandler(debuglevel=0),
    urllib2.HTTPCookieProcessor(cj)
    )
opener.addheaders = fake_header


# first_page = opener.open('http://account.youdao.com/login?back_url=http://dict.youdao.com&service=dict')
# first_page = opener.open('http://dict.youdao.com/wordbook/wordlist')

# para = {
#     'app'  : 'web',
#     'tp'  : 'urstoken',
#     'cf'  : '7',
#     'fr'  : '1',
#     'ru'  : 'http://dict.youdao.com',
#     'product'  : 'DICT',
#     'type'  : '1',
#     'um'  : 'true',
#     'username'  : 'kkwo2008@163.com',
#     'password'  : '80effcb4b5db2fceddc4cd43d5818dd9',
#     'savelogin' : '1',
#     }
# postData = urllib.urlencode(para)

# login_post = opener.open('https://logindict.youdao.com/login/acc/login', postData)




# respInfo = login_post.info()

para = {
    'word'  : 'hello21',
    'phonetic'  : "[hə'ləʊ; he-]",
    'desc'  : 'n. 表示问候， 惊奇或唤起注意时的用语',
    'tags'  : 'Alfred',
    }
postData = urllib.urlencode(para)

opener.addheaders = fake_header + [
    ('Referer', 'http://dict.youdao.com/wordbook/wordlist'),
]

login_post = opener.open('http://dict.youdao.com/wordbook/wordlist?action=add', postData)

print login_post.headers.get('Location')

# cj.save(cookie_filename, ignore_discard=True, ignore_expires=True)