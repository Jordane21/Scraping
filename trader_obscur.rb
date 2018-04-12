def get_crypto
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
    cryto_money = page.css("a.lientxt").text
end