

#provide a pair of points in latitude and longitude, in 'degrees' to get
#the distance back in Km
function getDistanceFromLatLongInKm(lat1,long1,lat2,long2) 
  RadiusEarth = 6371; # Earth's radius in km
  dLat = deg2rad(lat2-lat1); # deg2rad, built in fn in Julia
  dLong = deg2rad(long2-long1); 
  h = sin(dLat/2)*sin(dLat/2) + cos(deg2rad(lat1))*cos(deg2rad(lat2))*sin(dLong/2)*sin(dLong/2)
  d = RadiusEarth * 2 * atan2(sqrt(h),sqrt(1-h)); # Distance in km
  return d;
end
