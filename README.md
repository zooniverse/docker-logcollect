# docker-logcollect

A small app that tails log files and sends the contents to Graylog.

Usage:

    docker run -d -v /path/to/logs:/logs -e LOGFILES="file1.log file2.log " zooniverse/logcollect --server graylog.example.com

For additional command-line options, see the docs for
[gelfcat](https://github.com/zooniverse/gelfcat).
