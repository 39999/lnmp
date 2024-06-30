#!/bin/bash

# 欢迎语
echo "欢迎使用 LNMP 版本下载脚本！"

# 提供版本选项
echo "请选择一个 LNMP 版本："
echo "0.4. LNMP 0.4 完整版"
echo "0.5. LNMP 0.5 完整版"
echo "0.6. LNMP 0.6 完整版"
echo "0.7. LNMP 0.7 完整版"
echo "0.8. LNMP 0.8 完整版"
echo "0.9. LNMP 0.9 完整版"
echo "1.0. LNMP 1.0 完整版"
echo "1.1. LNMP 1.1 完整版"
echo "1.2. LNMP 1.2 完整版"
echo "1.3. LNMP 1.3 完整版"
echo "1.4. LNMP 1.4 完整版"
echo "1.5. LNMP 1.5 完整版"
echo "1.6. LNMP 1.6 完整版"
echo "1.7. LNMP 1.7 完整版"
echo "1.8. LNMP 1.8 完整版"
echo "1.9. LNMP 1.9 完整版"

# 获取用户输入
read -p "请输入选择的版本号（如 1.4）: " choice

# 下载所选版本
case $choice in
    0.4)
        version="0.4"
        ;;
    0.5)
        version="0.5"
        ;;
    0.6)
        version="0.6"
        ;;
    0.7)
        version="0.7"
        ;;
    0.8)
        version="0.8"
        ;;
    0.9)
        version="0.9"
        ;;
    1.0)
        version="1.0"
        ;;
    1.1)
        version="1.1"
        ;;
    1.2)
        version="1.2"
        ;;
    1.3)
        version="1.3"
        ;;
    1.4)
        version="1.4"
        ;;
    1.5)
        version="1.5"
        ;;
    1.6)
        version="1.6"
        ;;
    1.7)
        version="1.7"
        ;;
    1.8)
        version="1.8"
        ;;
    1.9)
        version="1.9"
        ;;
    *)
        echo "无效的选择。"
        exit 1
        ;;
esac

# 获取用户是否解压选项
read -p "是否要下载完后解压到 /file？(Y/N，默认Y): " extract_choice
extract_choice=${extract_choice:-Y}

# 下载所选版本
echo "您选择了 LNMP $version 完整版，正在下载..."
wget -P /file "https://soft.lnmp.com/lnmp/lnmp${version}-full.tar.gz"
echo "下载完成！"

# 解压
if [ "$extract_choice" = "Y" ] || [ "$extract_choice" = "y" ]; then
    echo "正在解压到 /file..."
    tar -zxvf "/file/lnmp${version}-full.tar.gz" -C /file
    echo "解压完成！"
fi

