import csv

with open('vel_2Daneu_crop.csv', 'r') as f:
    reader = csv.reader(f, delimiter=',')
    rows = []
    for row in reader:
        rows.append(row)
