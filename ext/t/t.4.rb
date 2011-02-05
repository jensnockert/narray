require "./narray.so"


a = NArray::DFloat.cast([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
a.debug_info
p a

#b = a[1..2,0..1]
#b.debug_info
#p b

#b = a['1:2',0..1]
#b = a['1:2,0:1']

#b = a['0:2:2,1:0:-1']
#b = a['::,*:*']
#b = a['1:*:,*:2:-1']
b = a[0..1, [1,3]]
b.debug_info
p b

a['0:*:2,1::2'] = 1.5 #NArray::DFloat.cast(1)
p a