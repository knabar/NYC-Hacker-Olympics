s = "iirytroyppytpeppowuiyoiuypipiyuyotyoiwiytorouqyiepyirueuiprpptwyiroqwtuyipourrrourorwipowiorutpwtwruuioquteorioriyutwqyyprptuqqquuituyywyuoewtrppqwrtiiruirpwyptpuoyyoeyerpqiotuieripurouwuwyuwrworowitoepoypeipeypiireeorrwripuuteoitpuutturruwiyryeetyrioweytueqrrrtotrpiqetoyepoipiwrwpppiritupwipruooiepoweypiuwrqywuuwyiroqpqpruioopuiuerputpwwuuiqwpiroewrtwiqerteoyeqtutwoeoipioiuqiiiouuoqtuuwtuwiiqwppqitywuqpuutrqiyoeuuutwrwtoqrqyoeyoiporuuioiwryoeruypreprqroiyuqwtuyoytoerwqryeeripryieypiwqirtriurueypiuyuypriuiwptywppupoioyrewooytreteeriiwroietuwypieeeeeqpiiiwrirtppoeyiwpooyyporpruwuoriiyowuytiwpwpryeywotoyirqypyypoeptiuwwoyprquoetepptorwiewprpiywwtuieeiweytrrwiqtwotioryoiptyyyuriiqiyroeeiqepwteuwptpruuypipieuoiiuuweeuryuuowporrooyywyyrryriqyirooitirueruptotpryoqtipippyptiurwyiryooywtryyuurtrutwqiqiiiqwouyeooueoturuowiuwrtruwwiupwopwweoo"
import re
while s:
	r,n=re.subn(s[:2]+'(?=(..)*$)','',s[2:])
	if n<1:
		print sum("qwertyuiop".find(l) for l in s[:2]),
	s=r
