-module(phone_number).
-export([phone_number/0, start/0]).
-import(decode, [decode/1]).

phone_number() -> 
    Code = "iirytroyppytpeppowuiyoiuypipiyuyotyoiwiytorouqyiepyirueuiprpptwyiroqwtuyipourrrourorwipowiorutpwtwruuioquteorioriyutwqyyprptuqqquuituyywyuoewtrppqwrtiiruirpwyptpuoyyoeyerpqiotuieripurouwuwyuwrworowitoepoypeipeypiireeorrwripuuteoitpuutturruwiyryeetyrioweytueqrrrtotrpiqetoyepoipiwrwpppiritupwipruooiepoweypiuwrqywuuwyiroqpqpruioopuiuerputpwwuuiqwpiroewrtwiqerteoyeqtutwoeoipioiuqiiiouuoqtuuwtuwiiqwppqitywuqpuutrqiyoeuuutwrwtoqrqyoeyoiporuuioiwryoeruypreprqroiyuqwtuyoytoerwqryeeripryieypiwqirtriurueypiuyuypriuiwptywppupoioyrewooytreteeriiwroietuwypieeeeeqpiiiwrirtppoeyiwpooyyporpruwuoriiyowuytiwpwpryeywotoyirqypyypoeptiuwwoyprquoetepptorwiewprpiywwtuieeiweytrrwiqtwotioryoiptyyyuriiqiyroeeiqepwteuwptpruuypipieuoiiuuweeuryuuowporrooyywyyrryriqyirooitirueruptotpryoqtipippyptiurwyiryooywtryyuurtrutwqiqiiiqwouyeooueoturuowiuwrtruwwiupwopwweoo",
    decode(Code).

start() ->
    io:fwrite("~s~n", [phone_number()]).

