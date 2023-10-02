# 使用官方的CAS映像作為基礎映像
# FROM apereo/cas:7.0.0-SNAPSHOT
FROM apereo/cas:6.6.12

# 生成密鑰存儲文件
RUN keytool -genkey \
            -alias cas \
            -keyalg RSA \
            -keysize 2048 \
            -keystore /etc/cas/thekeystore \
            -validity 3650 \
            -storepass changeit \
            -keypass changeit \
            -dname "CN=cas.pervive.cc, OU=pervive, O=pervive, L=taipei, S=taipei, C=TW" \
            -ext SAN="dns:cas.pervive.cc,dns:localhost,ip:127.0.0.1"