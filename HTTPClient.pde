import java.util.Arrays;
JSONObject json;


void setup() 
{
  size(350, 100);
  background(50);
  fill(200);
  background(255);
  textSize(16);                  // STEP 3 Specify font to be used
  fill(0);                         // STEP 4 Specify font color
}

String getDateTime ()
{
   background(255); //screen celanning      
  try
  {
    String lines[] = loadStrings("http://worldtimeapi.org/api/timezone/America/Mexico_City");
    //println(lines);
    json = parseJSONObject(lines[0]);
    return(json.getString("datetime"));
  }
  catch (Exception e)
  {
    println("========");
    println(e);
    println("========");
    return "ERROR";
  }
}


void draw() 
{ 
  text(getDateTime(), 10, 50);   // STEP 5 Display Text
  delay(1000);
}
