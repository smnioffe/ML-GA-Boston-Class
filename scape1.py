from bs4 import BeautifulSoup
import urllib2
url="http://www.indeed.com/resumes/arcadia-solutions?rb=cmpid%3A310253%7C16204768"
page = urllib2.urlopen(url)
soup = BeautifulSoup(page.read(),"html.parser")

tag=soup.find_all('a',class_='app_link')
tag_a=soup.find_all('span',class_='last_updated')

for i, j in zip(tag, tag_a):
    print(str(i.text), str(j.text))
