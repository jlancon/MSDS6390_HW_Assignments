//http://api.nytimes.com/svc/search/v2/articlesearch.json?q=processing&sort=newest&api-key=65c45b90098443e382456171886f4259
/**
 * Loading JSON Data
 * by Daniel Shiffman.  
 * 
 * to retrieve JSON data via URL
 */
//int[] numbers = new int[3];

String [] headline = new String[10];
void setup() {
  size(600, 400);

  // The URL for the JSON data
  String apiKey = "65c45b90098443e382456171886f4259";
  String url = "http://api.nytimes.com/svc/search/v2/articlesearch.json";
  String query = "?q=processing&sort=newest";

  background(220);
  fill(0);
  // Load the JSON document
  JSONObject json = loadJSONObject(url+query+"&api-key="+apiKey);
 for (int i = 0; i < 10; i = i+1) {
    headline[i] = json.getJSONObject("response").getJSONArray("docs").getJSONObject(i).getJSONObject("headline").getString("main");

  text(headline[i],10,(10+i*20),550,400);
  }
saveStrings("fileTest.txt", headline);
}
