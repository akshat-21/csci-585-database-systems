CREATE TABLE dblocations(gid int NOT NULL, name varchar, loc geometry, Primary key(gid));
insert into dblocations values
(1,'Subway',ST_GeomFromText('POINT(-118.2780526 34.0261166)',4326)),
(2,'Chase',ST_GeomFromText('POINT(-118.2798382 34.02279891)',4326)),
(3,'OIS', ST_GeomFromText('POINT(-118.2816313 34.0218173)',4326)),
(4,'Marshall School', ST_GeomFromText('POINT(-118.2857384 34.0188405)',4326)),
(5,'Tommys place', ST_GeomFromText('POINT(-118.2861405 34.019785)',4326)),
(6,'Bovard',ST_GeomFromText('POINT(-118.2855371 34.0209141)',4326)),
(7,'Parkside College',ST_GeomFromText('POINT(-118.2910728 34.0191946)',4326)),
(8,'Lyon Center', ST_GeomFromText('POINT(-118.2883821 34.0243846)',4326)),
(9,'Village Gym', ST_GeomFromText('POINT(-118.2857766 34.0249771)',4326)),
(10,'Target', ST_GeomFromText('POINT(-118.2843075 34.0257486)',4326)),
(11,'Ralphs', ST_GeomFromText('POINT(-118.2908775 34.0319371)',4326)),
(12,'Home', ST_GeomFromText('POINT(-118.28313 34.0296529)',4326));
