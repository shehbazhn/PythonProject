import csv

def read_csv_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as csvfile:   # ✅ text mode
        reader = csv.reader(csvfile)
        data = list(reader)
    return data

