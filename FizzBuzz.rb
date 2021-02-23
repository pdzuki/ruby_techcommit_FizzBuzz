#FizzBuzz 応用編
#つねに、3桁になるように 例 003 029 150など
#3の倍数 または　3がつく数字の時は、うしろに「!」をつける　例 09! 72!
#出力される値は、かならず3桁　例 126 (3の倍数だが「!」はつかない)

for num in 1..150 do
    num_digits = num.to_s.length
    num_to_char = num.to_s
    #3桁に合わせるため 0で埋める 例 3 → 003
    array_padding_0 = [format("%03d",num)]
    
    #「!」をつけるときの処理、処理が重複するので関数にする
    def put_mark(insert_data)
        fix_padding_0 = [format("%02d",insert_data)]
        fix_padding_0.push("!")
    end
    
    #最初の条件 「3桁未満である」　3桁だと「!」をつけられないので、処理をする必要がない
    while(num_digits < 3) do
        #「3の倍数である」
        if(num % 3 == 0)
            array_padding_0 = put_mark(num)
        #「3がつく」
        elsif(num_to_char.include?("3") == true)
            array_padding_0 = put_mark(num)
        end
        #一回だけでいいので、ここでbreak (ループを抜ける)
        break
    end
    
    #配列の中身を連結して表示
    puts array_padding_0.join
end
