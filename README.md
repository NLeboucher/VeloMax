This project is a C# Windows Forms that manipulates a database to learn about C# Windows Forms and how to manipulate a Database

You need a database you can build one from docker with this command:

<pre><code>```bash
docker run -p 3306:3306 --name mysql-container -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:latest
```</code></pre>

With mysql workbench you can run the dumps.sql script to fill up the database.

From there build the C# project with Visual Studio

In VeloMax\obj\Debug there is an executable to try it also

Requirements:
Windows 7, 8, 8.1, 10 or 11
.NET C# Windows Forms 4.5 (or later)