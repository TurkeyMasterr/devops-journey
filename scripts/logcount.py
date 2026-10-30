import sys


if len(sys.argv) < 2:
    print("Usage: python3 logcount.py <logfile>")  
    sys.exit()
file = sys.argv[1]

try:
    with open(file) as log_file:
        data = log_file.read()
        logs = data.strip().split("\n")
        
        ip_list = []
        ip_dict = {}

        for line in logs:
            parts  = line.split()
            if parts == []:
                continue
            ip_list.append(parts[0])
             
        for item in ip_list:
            if item in ip_dict:
                ip_dict[item] += 1
            else:
                ip_dict[item] = 1     
        
        for key, value in ip_dict.items():
            print(value, key)

except FileNotFoundError:
    print(f"Error: file not found: {file}")
