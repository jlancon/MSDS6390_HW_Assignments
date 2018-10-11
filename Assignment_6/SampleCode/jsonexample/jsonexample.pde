// The following short JSON file called "data.json" is parsed 
// in the code below. It must be in the project's "data" folder.
//
// [
//   {
//     "id": 0,
//     "species": "Capra hircus",
//     "name": "Goat"
//   },
//   {
//     "id": 1,
//     "species": "Panthera pardus",
//     "name": "Leopard"
//   },
//   {
//     "id": 2,
//     "species": "Equus zebra",
//     "name": "Zebra"
//   }
// ]

JSONObject values;

void setup() {

  values = loadJSONObject("data2.json");

//  for (int i = 0; i < values.size(); i++) {
    
//    JSONObject animal = values.getJSONObject(i); 

//    int id = animal.getInt("id");
    String chart = values.getString("chartName");
    float price = values.getJSONObject("bpi").getJSONObject("USD").getFloat("rate_float");

//    println(id + ", " + species + ", " + name);
//  }
println(chart,price);
}
