import sys

def classify(aqi):
    if aqi < 50.5: return "Good"
    elif aqi < 100.5: return "Moderate"
    elif aqi < 150.5: return "Unhealthy for Sensitive Groups"
    elif aqi < 200.5: return "Unhealthy"
    elif aqi < 300.5: return "Very Unhealthy"
    else: return "Hazardous"

with open("bench/data.txt") as f:
    for line in f:
        classify(float(line.strip()))
