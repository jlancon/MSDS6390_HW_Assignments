// Menu for selection use button class; Horizontal / Vertical
 
class Menu {
  float posx, posy;
  String plotTitle;
  String[] ctrlabels;
  color[] ctrcolors;
  float ctrh, ctrw;
  Button[] controls;
  HashMap<String, String> buttonToName;
  float dataMax;
  float dataMin;
  float minColor;
  float maxColor;
  int[] dataColumn;
  Data data;
  ColourTable myCTable;
  int keeper;
  //Map displayMap;
  Boolean chartToggle;
  HashMap<Boolean, Chart> displayChart;
 
  Menu(){
  }
  
  Menu(String[] ctrlabels, color[] ctrcolors){
   this.ctrlabels = ctrlabels;
   this.ctrcolors = ctrcolors;
   controls = new Button[ctrlabels.length];
  }
  
  Menu(String[] ctrlabels, float ctrh, float ctrw, color[] ctrcolors, Data data, HashMap<String, String> buttonToName, int[] dataColumn){
   this.ctrlabels = ctrlabels;
   this.ctrh = ctrh;
   this.ctrw = ctrw;
   this.data = data;
   this.ctrcolors = ctrcolors;
   controls = new Button[ctrlabels.length];
   this.buttonToName = buttonToName;
   this.keeper = 0;
   this.dataColumn = dataColumn;
   this.setColorScale();
   this.setColorTable();
   this.chartToggle = true;
   this.displayChart = new HashMap<Boolean, Chart>();
   this.displayChart.put(true, new Map(this.data, this.buttonToName.get("Life Exp."), this.myCTable, this.dataColumn[this.keeper]));
   this.displayChart.put(false, new BarChart(data, this.buttonToName.get("Life Exp."), this.myCTable, this.dataColumn[this.keeper]));
   this.displayChart.get(this.chartToggle).drawCountries();
   this.displayChart.get(this.chartToggle).drawTitleText();
   //this.displayMap = new Map(data, buttonToName.get("Life Exp."), this.myCTable, dataColumn[this.keeper]);
   //this.displayMap.drawCountries();
   //this.displayMap.drawTitleText();
  }
  
  // build function - display the menu in the defined x,y position and orientation (horizontal = true)
  void build(float posx, float posy, boolean horizontal){
    PVector ctrpos;
    this.posx = posx;
    this.posy = posy;
    
    for (int i=0; i<ctrlabels.length; i++) {
      ctrpos = new PVector(posx, posy);  
      controls[i] = new Button(this.ctrlabels[i],ctrpos, this.ctrh, this.ctrw, this.ctrcolors);
      controls[i].display();
      if (horizontal) {
        posx = posx+ctrw;
      }   
      else {
        posy = posy+ctrh;
      }
    }
  } // build
  
      void setColorScale(){
//        this.keeper = keeper;
   println("Scale Keeper",this.keeper);
        this.dataMax = 0;
        this.dataMin = 0;
        for(TableRow row : this.data.tableData.rows()){
            this.dataMax = max(this.dataMax, row.getFloat(dataColumn[this.keeper]));
   println("Data Max", this.dataMax);
            this.dataMin = min(this.dataMin, row.getFloat(dataColumn[this.keeper]));
   println("Data Min",this.dataMin);
        }
    setColorTable();
    saveColorTable();
    }

    void setColorTable(){
        println("Set Color Keeper",this.keeper);
        if(this.keeper == 0){
        this.myCTable = ColourTable.getPresetColourTable(ColourTable.SPECTRAL,dataMin,dataMax);
        }
        else if(this.keeper == 1){
        this.myCTable = ColourTable.getPresetColourTable(ColourTable.YL_GN_BU,dataMin,dataMax);
        }
        else if(this.keeper == 2){
        this.myCTable = ColourTable.getPresetColourTable(ColourTable.RD_YL_GN,dataMin,dataMax);
        }
        else{
            this.myCTable = ColourTable.getPresetColourTable(ColourTable.REDS,dataMin,dataMax);
        }
    }

    void saveColorTable(){
        ColourTable.writeFile(myCTable,createOutput("mapColors.ctb"));
  }
  
  void switchToggle(Boolean value){
    if(value == true){
      this.chartToggle = true;
    }
    else{
      this.chartToggle = false;
    }
   //this.displayChart.put(this.chartToggle, new Map(data, this.buttonToName.get("Life Exp."), this.myCTable, dataColumn[this.keeper]));
   this.displayChart.get(this.chartToggle).drawCountries();
   this.displayChart.get(this.chartToggle).drawTitleText();
  }
  
  // Function used to identified the selected button
  void selectedButton() {
    String optionSelected="";
    for (int i=0; i < controls.length; i++) {
      if (controls[i].isSelected() && mousePressed) {
        controls[i].backcol = btncolors[3];
        controls[i].selected = true;
        controls[i].display();
        optionSelected = controls[i].label;
      }
      else {
        controls[i].backcol = btncolors[0];
        controls[i].selected = false;
        controls[i].display();
      }
    }
    fill(255);
    switch(optionSelected) {
          case ("Life Exp."):   
            this.keeper = 0;
      println("optionSelected Life Keeper",this.keeper); //Test
            setColorScale();
            break;
          case ("Pop. Density"):
            this.keeper = 1;
      println("optionSelected Pop Keeper",this.keeper); //Test
            setColorScale();
            break;
          case ("GDP per Capita"):
            this.keeper = 2;
      println("optionSelected GDP Keeper",this.keeper); //Test
            setColorScale();
            break;
          case ("Mortality Rate"):
            this.keeper = 3;
       println("optionSelected Mort Keeper",this.keeper); //Test
            setColorScale();
            break;
          default:
            this.keeper = 0;
            setColorScale();
            fill(0);
    }
    if(this.chartToggle == true){
    this.displayChart.put(this.chartToggle, new Map(data, this.buttonToName.get(optionSelected), this.myCTable, dataColumn[this.keeper]));
    }
    else{
      this.displayChart.put(this.chartToggle, new BarChart(data, this.buttonToName.get(optionSelected), this.myCTable, dataColumn[this.keeper]));
    }
    this.displayChart.get(this.chartToggle).drawCountries();
    this.displayChart.get(this.chartToggle).drawTitleText();
  } // selectedButton
  
  // Keep the selection of the button
  void keepButton(){   
    this.displayChart.get(this.chartToggle).drawCountries();
    this.displayChart.get(this.chartToggle).drawTitleText();
    // keep selected button 
    controls[keeper].backcol = btncolors[3];
    controls[keeper].display();
    this.displayChart.get(this.chartToggle).displayCountryData();  
  }
}
