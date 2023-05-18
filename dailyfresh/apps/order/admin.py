from django.contrib import admin
from order.models import OrderInfo,OrderGoods
# Register your models here.


class OrderInfoAdmin(admin.ModelAdmin):
    list_display = ('order_id','user','addr','pay_method','total_count','total_price','transit_price','order_status','trade_no');


class OrderGoodsAdmin(admin.ModelAdmin):
    list_display = ('order','sku','price','count','comment')


admin.site.register(OrderInfo,OrderInfoAdmin)
admin.site.register(OrderGoods,OrderGoodsAdmin)
