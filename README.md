# Ghostry_Conky
Ghostry's conky config file

# 安装

    sudo apt-get install -y hddtemp vnstat conky-manager
    sudo chmod u+s /usr/sbin/hddtemp
    sudo service vnstat start
    cd ~/.conky
    git clone https://github.com/ghostry/Ghostry_Conky.git
    mkdir ~/.fonts
    cp Climacons.ttf ~/.fonts
    fc-cache -fv
    gedit weather.sh #修改地区编码为需要的地区。地区编码获取http://www.weather.com/weather/

# 启用
打开`conky-manager`->点击Themes->勾选Ghostry_Conky

