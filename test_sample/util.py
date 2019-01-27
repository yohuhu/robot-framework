from datetime import datetime

def get_current_time():
    now= datetime.now()
    now_time=now.strftime("%Y-%m-%d-%H_%M_%S")
    print(now_time)
    return now_time


get_current_time()