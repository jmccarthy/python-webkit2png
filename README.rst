Originally taken from the blog post by Roland Tapken at:
http://www.blogs.uni-osnabrueck.de/rotapken/2008/12/03/create-screenshots-of-a-web-page-using-python-and-qtwebkit/

---
On ubuntu you need to add following packages:
apt-get install python-qt4 libqt4-webkit 

---

WSGI-Compatibility modifications (jmccarthy)

Tweaking AdamN's fork to run as a simple WSGI application.  I am assuming Xvfb is run/monitored outside the lifecycle of this application, and therefore this script expects a suitable DISPLAY be made available to it.