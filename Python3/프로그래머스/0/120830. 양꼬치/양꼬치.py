def solution(n, k):
    # 10인분당 음료 1개 서비스
    drink = n // 10
    total_price = (n*12000) + ((k-drink)*2000)
    
    return total_price