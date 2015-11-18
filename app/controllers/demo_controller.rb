class DemoController < ApplicationController
  def index
    @province = ['甘肃', '青海', '广西', '贵州', '重庆', '北京', '福建', '安徽', '广东', '西藏', '新疆', '海南', '宁夏', '陕西', '山西', '湖北', '湖南', '四川', '云南', '河北', '河南', '辽宁', '山东', '天津', '江西', '江苏', '上海', '浙江', '吉林','内蒙古', '黑龙江', '台湾', '香港', '澳门']
    @provinceCount = []
    iplist =['121.42.139.110', '121.199.3.222', '121.199.3.222', '114.215.192.42', '123.57.0.118', '120.24.152.136', '121.40.204.149', '183.136.236.85', '120.26.17.130', '115.28.244.248', '54.223.165.75', '61.149.254.18', '218.1.72.185', '120.24.56.171', '118.26.133.91', '58.221.42.202', '120.24.152.32']
    adds = {'甘肃' => "Gansu",'青海' => "Qinghai",'广西' => "Guangxi",'贵州' => "Guizhou",'重庆' => "Chongqing",'北京' => "Beijing",'福建' => "Fujian",'安徽' => "Anhui",'广东' => "Guangdong",'西藏' => "Xizang",'新疆' => "Xinjiang",'海南' => "Hainan",'宁夏' => "Ningxia",'陕西' => "Shaanxi",'山西' => "Shanxi",'湖北' => "Hubei",'湖南' => "Hunan",'四川' => "Sichuan",'云南' => "Yunnan",'河北' => "Hebei",'河南' => "Henan",'辽宁' => "Liaoning",'山东' => "Shandong",'天津' => "Tianjin",'江西' => "Jiangxi",'江苏' => "Jiangsu",'上海' => "Shanghai",'浙江' => "Zhejiang",'吉林' => "Jilin",'内蒙古' => "Inner Mongol",'黑龙江' => "Heilongjiang",'台湾' => "Taiwan",'香港' => "Xianggang",'澳门' => "Macau"}
    @arr = []
    iplist.each {|x| @arr.push SM.find_by_ip x }
    @province.each do |x|
      key = adds[x]
      count = @arr.count {|s| s[:province] == x }
     @provinceCount.push [adds[x],count]
    end


  end
end
