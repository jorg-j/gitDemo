


# Writes data to file
def writer(file, data):
    with open(file, 'w+')as f:
        f.write(data)
