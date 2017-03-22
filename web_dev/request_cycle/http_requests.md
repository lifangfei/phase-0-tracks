# Answers to Questions

**1. What are some common HTTP status codes?**
	1xx Informational Responses
	2xx Success
	*200 OK
	3xx Redirection
	*300 Multiple Choices
	*301 Moved Permanently
	*302 Found
	*304 Not Modified
	*307 Temporary Redirect
	4xx Client Errors
	*400 Bad Request
	*401 Unauthorized
	*403 Forbidden
	*404 Not Found
	*410 Gone
	5xx Server Errors
	*500 Internal Server Error
	*501 Not Implemented
	*503 Service Unavailable
	*550 Permission denied

**2. What is the difference between a GET request and a POST request? When might each be used?**
GET: All required data is in the URL, appended to the action URL
POST: Additional data from the client to the server in the message body
GET is less secure than POST, but GET ccan be used for database queries. POST is better when the data has non-ASCII characters, the form data is large, and for "hidden" fields

**3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**
"Cookies are small files which are stored on a user's computer. They are designed to hold a modest amount of data specific to a particular client and website, and can be accessed either by the web server or the client computer. This allows the server to deliver a page tailored to a particular user, or the page itself can contain some script which is aware of the data in the cookie and so is able to carry information from one visit to the website (or related site) to the next.

The server sends the following in its response header to set a cookie field.
Set-Cookie:name=value

If there is a cookie set, then the browser sends the following in its request header.
Cookie:name=value"