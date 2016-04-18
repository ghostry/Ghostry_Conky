# Ghostry_Conky
Ghostry's conky config file

# 安装

    sudo apt-add-repository -y ppa:teejee2008/ppa
    sudo apt-get update
    sudo apt-get install -y hddtemp vnstat conky-manager
    sudo chmod u+s /usr/sbin/hddtemp
    sudo service vnstat start
    conky-manager #打开后关闭
    cd ~/.conky
    git clone https://github.com/ghostry/Ghostry_Conky.git
    mkdir ~/.fonts      #存在则跳过
    cp Ghostry_Conky/Climacons.ttf ~/.fonts
    fc-cache -fv
    gedit weather.sh #修改地区编码为需要的地区。地区编码获取http://dy.ghostry.cn/Home/Index/lookCitys.html找到城市后打开，在网址里有一串数字就是。

# 启用
打开`conky-manager`->点击Themes->勾选Ghostry_Conky

