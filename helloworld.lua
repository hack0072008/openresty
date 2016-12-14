一 编写hello.lua
   touch /opt/openresty/src/hello.lua
   [root@S1PA11 conf]# cat /opt/openresty/src/hello.lua
   ngx.say("HelloWorld")
   
二 配置nginx
   1 vim /opt/openresty/nginx/conf/nginx.conf,增加：
        location /hello {
            default_type text/html;
            content_by_lua_file /opt/openresty/src/hello.lua;
        }
   2 nginx -c /opt/openresty/nginx/conf/nginx.conf -s reload
   
三 测试
   [root@S1PA11 conf]# curl 127.0.0.1:80/hello
   HelloWorld
