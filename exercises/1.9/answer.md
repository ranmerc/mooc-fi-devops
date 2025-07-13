Make sure to create file named `text.log` before running this command or -v will create a directory of that name and your script will fail saying `text.log` is a directory.

```shell
docker run --rm -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
```
