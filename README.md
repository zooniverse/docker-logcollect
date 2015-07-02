# docker-logcollect

A small app that tails log files and sends the contents to Graylog.

Usage:

    docker run -d -v /path/to/logs:/logs -e LOGFILES="/logs/file1.log /logs/file2.log" zooniverse/logcollect --server graylog.example.com

    docker run -d --volumes-from=myapp -e LOGFILES="/var/log/myapp/app.log" zooniverse/logcollect --server graylog.example.com

For additional command-line options, see the docs for
[gelfcat](https://github.com/zooniverse/gelfcat).
