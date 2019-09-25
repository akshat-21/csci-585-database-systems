# Geospatial Databases

In this project, I worked on spatial data - generated some spatial data, visualized it, did queries on it, and visualized the query results.

1. I generated latitude, longitude pairs (ie. spatial coordinates) for 12 locations. I used my phone's built-in compass app to read off the displayed GPS coordinate values at each of the locations.

2. Next, I created a KML file (.kml format, which is XML) and entered the co-ordinates in it for doing visualizations and queries. [Here](./csci-585-database-systems/Geospatial-Databases/Assignment3.kml) is the .kml file with co-ordinates and their labels.

3. The data in KML file is visualized by loading it in Google Earth. Following is the result:
![points](./Step3.png)

4. Next, I've written two spatial queries in Postgres+PostGIS.
  - To compute the convex hull for 12 points [a convex hull for a set of 2D points is the smallest convex polygon that contains the point set]. Used the query's result of polygon's coordinates, to create a polygon in .kml file and visualized it on Google Earth to verify that all points are on/inside the convex hull.

 - To compute the four nearest neighbors of a particular location. Used the query's results, to create four line segments in .kml file and visualized it on Google Earth.
Result of convex hull and four nearest neighbors:
![Convex Hull](./Step5.png)
