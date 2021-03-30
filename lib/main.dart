import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Absi());

class Absi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AbsiState();
  }
}

class AbsiState extends State<Absi> {
  List genders = ['Female', 'Male'];
  String valueChoose = 'Female';
  final TextEditingController age = TextEditingController();
  final TextEditingController weight = TextEditingController();
  final TextEditingController height = TextEditingController();
  final TextEditingController wc = TextEditingController();
  double _result = 0.0;
  double zscore=0;
double male=0;
String risk="";
  void cal() {
    int age_=int.parse(age.text);
    double weight_ = double.parse(weight.text) / 100;
    double height_ = double.parse(height.text) / 100;
    double waist = double.parse(wc.text) / 100;
    double bmi = weight_ / (pow(height_, 2) / 100);
    double absi_ = waist / (pow(bmi, 2 / 3) * (pow(height_, 1 / 2)));
      
      
    setState(
      () {
        _result = absi_;
        print(_result);
       
      },
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF43A047),
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: Text('ABSI CALCULATOR',
              style: TextStyle(fontFamily: 'open sans condensed')),
        ),
       resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 10),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sex', style: TextStyle(fontSize: 20)),
                    DropdownButton(
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: genders.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration:
                    BoxDecoration(color: Colors.white, boxShadow: const [
                  BoxShadow(blurRadius: 10),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Age', style: TextStyle(fontSize: 20)),
                    Container(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: age,
                      ),
                      width: 50,
                    ),
                 
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration:
                    BoxDecoration(color: Colors.white, boxShadow: const [
                  BoxShadow(blurRadius: 10),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Height(cm)', style: TextStyle(fontSize: 20)),
                    Container(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: height,
                      ),
                      width: 50,
                    ),
                  
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration:
                    BoxDecoration(color: Colors.white, boxShadow: const [
                  BoxShadow(blurRadius: 10),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Weight(kg)', style: TextStyle(fontSize: 20)),
                    Container(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: weight,
                      ),
                      width: 50,
                    ),
                 
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration:
                    BoxDecoration(color: Colors.white, boxShadow: const [
                  BoxShadow(blurRadius: 10),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Waist circumference(cm)', style: TextStyle(fontSize: 20)),
                    Container(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: wc,
                      ),
                      width: 50,
                    )
                   
                  ],
                ),
              ),

              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        child: Text('Calculate'),
                        onPressed: () {
                          cal();
                          callme ();
                           mortality();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[600],
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        )),
                    Text(
                      'Results : ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('ABSI :' + _result.toStringAsFixed(5),
                        style: TextStyle(fontSize: 20)),
                   Text('ABSI z-score :'+ zscore.toStringAsFixed(3), style: TextStyle(fontSize: 20)),
                   Text('Mortality risk is : '+ risk.toString() , style: TextStyle(fontSize: 20)),
                  ],
                ),
               
              ),
              
            ],
          ),
        ),
      ),
    );
  }
double femStandard (){
  int  x =int.parse(age.text);
var sfmean= new List (86);

sfmean[2]=.08031;
sfmean[3]=.08016;
sfmean[4]=.08001;
sfmean[5]=.07985;
sfmean[6]=.07969;
sfmean[7]=.07952;
sfmean[8]=.07935;
sfmean[9]=.07917;
sfmean[10]=.07899;
sfmean[11]=.07881;
sfmean[12]=.07863;
sfmean[13]=.07846;
sfmean[14]=.07829;
sfmean[15]=.07814;
sfmean[16]=.07799;
sfmean[17]=.07787;
sfmean[18]=.07775;
sfmean[19]=.07765;
sfmean[20]=.07757;
sfmean[21]=.07750;
sfmean[22]=.07744;
sfmean[23]=.07740;
sfmean[24]=.07737;
sfmean[25]=.07735;
sfmean[26]=.07734;
sfmean[27]=.07735;
sfmean[28]=.07736;
sfmean[29]=.07739;
sfmean[30]=.07743;
sfmean[31]=.07747;
sfmean[32]=.07752;
sfmean[33]=.07759;
sfmean[34]=.07766;
sfmean[35]=.07773;
sfmean[36]=.07782;
sfmean[37]=.07790;
sfmean[38]=.07800;
sfmean[39]=.07810;
sfmean[40]=.07820;
sfmean[41]=.07831;
sfmean[42]=.07842;
sfmean[43]=.07854;
sfmean[44]=.07866;
sfmean[45]=.07879;
sfmean[46]=.07892;
sfmean[47]=.07905;
sfmean[48]=.07919;
sfmean[49]=.07933;
sfmean[50]=.07947;
sfmean[51]=.07962;
sfmean[52]=.07977;
sfmean[53]=.07992;
sfmean[54]=.08007;
sfmean[55]=.08023;
sfmean[56]=.08039;
sfmean[57]=.08055;
sfmean[58]=.08072;
sfmean[59]=.08088;
sfmean[60]=.08105;
sfmean[61]=.08122;
sfmean[62]=.08139;
sfmean[63]=.08156;
sfmean[64]=.08174;
sfmean[65]=.08191;
sfmean[66]=.08208;
sfmean[67]=.08226;
sfmean[68]=.08243;
sfmean[69]=.08261;
sfmean[70]=.08278;
sfmean[71]=.08296;
sfmean[72]=.08313;
sfmean[73]=.08330;
sfmean[74]=.08346;
sfmean[75]=.08363;
sfmean[76]=.08380;
sfmean[77]=.08396;
sfmean[78]=.08412;
sfmean[79]=.08428;
sfmean[80]=.08444;
sfmean[81]=.08460;
sfmean[82]=.08476;
sfmean[83]=.08492;
sfmean[84]=.08508;
sfmean[85]=.08533;

var sfsd= new List(86);
sfsd[2]=.00363;
sfsd[3]=.00366;
sfsd[4]=.00369;
sfsd[5]=.00372;
sfsd[6]=.00375;
sfsd[7]=.00378;
sfsd[8]=.00380;
sfsd[9]=.00383;
sfsd[10]=.00386;
sfsd[11]=.00389;
sfsd[12]=.00392;
sfsd[13]=.00395;
sfsd[14]=.00397;
sfsd[15]=.00400;
sfsd[16]=.00403;
sfsd[17]=.00406;
sfsd[18]=.00408;
sfsd[19]=.00411;
sfsd[20]=.00414;
sfsd[21]=.00416;
sfsd[22]=.00419;
sfsd[23]=.00422;
sfsd[24]=.00424;
sfsd[25]=.00427;
sfsd[26]=.00429;
sfsd[27]=.00432;
sfsd[28]=.00435;
sfsd[29]=.00437;
sfsd[30]=.00440;
sfsd[31]=.00442;
sfsd[32]=.00445;
sfsd[33]=.00447;
sfsd[34]=.00450;
sfsd[35]=.00452;
sfsd[36]=.00454;
sfsd[37]=.00457;
sfsd[38]=.00459;
sfsd[39]=.00462;
sfsd[40]=.00464;
sfsd[41]=.00466;
sfsd[42]=.00469;
sfsd[43]=.00471;
sfsd[44]=.00473;
sfsd[45]=.00476;
sfsd[46]=.00478;
sfsd[47]=.00480;
sfsd[48]=.00483;
sfsd[49]=.00485;
sfsd[50]=.00487;
sfsd[51]=.00489;
sfsd[52]=.00492;
sfsd[53]=.00494;
sfsd[54]=.00496;
sfsd[55]=.00498;
sfsd[56]=.00501;
sfsd[57]=.00503;
sfsd[58]=.00505;
sfsd[59]=.00507;
sfsd[60]=.00509;
sfsd[61]=.00511;
sfsd[62]=.00514;
sfsd[63]=.00516;
sfsd[64]=.00518;
sfsd[65]=.00520;
sfsd[66]=.00522;
sfsd[67]=.00524;
sfsd[68]=.00526;
sfsd[69]=.00528;
sfsd[70]=.00530;
sfsd[71]=.00533;
sfsd[72]=.00535;
sfsd[73]=.00537;
sfsd[74]=.00539;
sfsd[75]=.00541;
sfsd[76]=.00543;
sfsd[77]=.00545;
sfsd[78]=.00547;
sfsd[79]=.00549;
sfsd[80]=.00551;
sfsd[81]=.00553;
sfsd[82]=.00555;
sfsd[83]=.00557;
sfsd[84]=.00559;
sfsd[85]=.00528;
double r =(_result- sfmean [x])/sfsd[x];

return r;
}
double maleStandard (){
var smmean= new List(86);
var smsd= new List(86);

smmean[2]=.07890;
smmean[3]=.07915;
smmean[4]=.07937;
smmean[5]=.07955;
smmean[6]=.07964;
smmean[7]=.07966;
smmean[8]=.07958;
smmean[9]=.07942;
smmean[10]=.07917;
smmean[11]=.07886;
smmean[12]=.07849;
smmean[13]=.07810;
smmean[14]=.07772;
smmean[15]=.07739;
smmean[16]=.07716;
smmean[17]=.07703;
smmean[18]=.07702;
smmean[19]=.07711;
smmean[20]=.07728;
smmean[21]=.07750;
smmean[22]=.07777;
smmean[23]=.07804;
smmean[24]=.07831;
smmean[25]=.07858;
smmean[26]=.07882;
smmean[27]=.07904;
smmean[28]=.07922;
smmean[29]=.07938;
smmean[30]=.07951;
smmean[31]=.07963;
smmean[32]=.07975;
smmean[33]=.07988;
smmean[34]=.08000;
smmean[35]=.08013;
smmean[36]=.08027;
smmean[37]=.08042;
smmean[38]=.08057;
smmean[39]=.08072;
smmean[40]=.08087;
smmean[41]=.08102;
smmean[42]=.08117;
smmean[43]=.08132;
smmean[44]=.08148;
smmean[45]=.08165;
smmean[46]=.08183;
smmean[47]=.08201;
smmean[48]=.08221;
smmean[49]=.08240;
smmean[50]=.08260;
smmean[51]=.08279;
smmean[52]=.08297;
smmean[53]=.08315;
smmean[54]=.08334;
smmean[55]=.08352;
smmean[56]=.08369;
smmean[57]=.08386;
smmean[58]=.08403;
smmean[59]=.08419;
smmean[60]=.08436;
smmean[61]=.08454;
smmean[62]=.08471;
smmean[63]=.08489;
smmean[64]=.08506;
smmean[65]=.08522;
smmean[66]=.08537;
smmean[67]=.08551;
smmean[68]=.08565;
smmean[69]=.08578;
smmean[70]=.08591;
smmean[71]=.08604;
smmean[72]=.08616;
smmean[73]=.08629;
smmean[74]=.08641;
smmean[75]=.08653;
smmean[76]=.08665;
smmean[77]=.08675;
smmean[78]=.08685;
smmean[79]=.08695;
smmean[80]=.08705;
smmean[81]=.08714;
smmean[82]=.08723;
smmean[83]=.08732;
smmean[84]=.08742;
smmean[85]=.08811;

smsd[2]=.00384;
smsd[3]=.00384;
smsd[4]=.00383;
smsd[5]=.00383;
smsd[6]=.00382;
smsd[7]=.00382;
smsd[8]=.00382;
smsd[9]=.00381;
smsd[10]=.00381;
smsd[11]=.00381;
smsd[12]=.00380;
smsd[13]=.00380;
smsd[14]=.00380;
smsd[15]=.00379;
smsd[16]=.00379;
smsd[17]=.00378;
smsd[18]=.00378;
smsd[19]=.00378;
smsd[20]=.00377;
smsd[21]=.00377;
smsd[22]=.00377;
smsd[23]=.00376;
smsd[24]=.00376;
smsd[25]=.00376;
smsd[26]=.00375;
smsd[27]=.00375;
smsd[28]=.00374;
smsd[29]=.00374;
smsd[30]=.00374;
smsd[31]=.00373;
smsd[32]=.00373;
smsd[33]=.00373;
smsd[34]=.00372;
smsd[35]=.00372;
smsd[36]=.00371;
smsd[37]=.00371;
smsd[38]=.00371;
smsd[39]=.00370;
smsd[40]=.00370;
smsd[41]=.00370;
smsd[42]=.00369;
smsd[43]=.00369;
smsd[44]=.00368;
smsd[45]=.00368;
smsd[46]=.00368;
smsd[47]=.00367;
smsd[48]=.00367;
smsd[49]=.00367;
smsd[50]=.00366;
smsd[51]=.00366;
smsd[52]=.00365;
smsd[53]=.00365;
smsd[54]=.00365;
smsd[55]=.00364;
smsd[56]=.00364;
smsd[57]=.00364;
smsd[58]=.00363;
smsd[59]=.00363;
smsd[60]=.00362;
smsd[61]=.00362;
smsd[62]=.00362;
smsd[63]=.00361;
smsd[64]=.00361;
smsd[65]=.00360;
smsd[66]=.00360;
smsd[67]=.00360;
smsd[68]=.00359;
smsd[69]=.00359;
smsd[70]=.00359;
smsd[71]=.00358;
smsd[72]=.00358;
smsd[73]=.00357;
smsd[74]=.00357;
smsd[75]=.00357;
smsd[76]=.00356;
smsd[77]=.00356;
smsd[78]=.00355;
smsd[79]=.00355;
smsd[80]=.00355;
smsd[81]=.00354;
smsd[82]=.00354;
smsd[83]=.00354;
smsd[84]=.00353;
smsd[85]=.00356;

int  x =int.parse(age.text);
double y =(_result- smmean [x])/smsd[x];
return y;
}

void callme (){
  
 

    if (valueChoose == 'Female'){
         setState(() {
        zscore=femStandard ();
        print(zscore);
     });} else if (valueChoose == 'Male') {
          setState(() {
        zscore=maleStandard ();
        print(zscore);

      },);
  }}
  void mortality(){
    setState(() {
 if (zscore< -0.868){
   risk='very low';

  } else if (zscore >= -0.868 && zscore <= -0.272){
    risk='low';
  }else if (zscore >= -0.868 && zscore <= -0.272){
 risk='Average';
  }else if(zscore >= 0.220 && zscore <= -0.798){
    risk='high';
  }else if(zscore > 0.798  ){
   risk='Very high';
  }

    });
  

  }

 


}
