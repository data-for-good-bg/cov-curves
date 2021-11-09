wget https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv -O ./data/owid-covid-data.csv
csvcut -c iso_code,date,new_cases_smoothed_per_million,new_deaths_smoothed_per_million,people_fully_vaccinated_per_hundred ./data/owid-covid-data.csv > ./data/owid-covid-data-clean.csv
head -1 data/owid-covid-data-clean.csv > ./data/bgr.csv
grep BGR data/owid-covid-data-clean.csv >> ./data/bgr.csv
