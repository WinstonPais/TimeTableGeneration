from django import template
register = template.Library()

@register.filter(name='ind')
def return_item(l, i):
    # print(i)
    # print(l)
    try:
        # print(l[i])
        return l[i]
    except:
        return None
# register.filter('ind',return_item)

# @register.filter(name='indtwo')
# def indtwo(l, i):
#     # print(i)
#     try:
#         # print(l[i])
#         return l[i]
#     except:
#         return None
#
# @register.filter(name='indthree')
# def indthree(l, i):
#     # print(i)
#     try:
#         # print(l[i])
#         return l[i]
#     except:
#         return None
