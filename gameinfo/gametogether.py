import csv
with open('gametogether.csv') as f:
    reader = csv.reader(f)
    next(reader)
    for row in reader:
        platform = row[3].split(', ')
        print(', {{ title = "{}", year = {}, genre = "{}", platforms = {}, hours = {} }}'.format(row[0], row[1], row[2], platform, row[4]))
