/*
 look for buildings or houses that are tagged at layer -1
 could really just be crossing buildings that need correcting
*/

[out:json][timeout:25];

(
  // query for any building that is a house or yes, and underground

  nwr["building"~"house|yes"]["layer"="-1"]({{bbox}});
);

out body;
>;
out skel qt;
