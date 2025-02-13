//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    fishtime(200,300,  color(300,9, 200));
    drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));
    drawlife(400,200, color(300,9,400));
    drawever(100,300, color(300,9,400));
};

//🟢draw Function - will run on repeat
draw = function(){


};





//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
  };
  
  
  //🟡fishtime Function - will run when called
var fishtime = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝 𓆟 𓆞", fishX,fishY);
  
};


//🟡drawlife Function - will run when called
var drawlife = function(lifeX, lifeY, lifeColor){
  textSize(70);
  fill(lifeColor);
  text("𓆡", lifeX, lifeY);
  };
  
  //🟡drawever Function - will run when called
var drawever = function(everX, everY, everColor){
  textSize(70);
  fill(everColor);
  text("𓆉", everX, everY);
  };
  

//🟢drawMole Function - custom function created for this lesson
var drawMole = function(moleX,moleY) {
   // var moleX = 308;
   // var moleY = 85;

    noStroke(1);
    fill(125, 93, 43);
    ellipse(moleX, moleY, 60, 60); // face
    fill(255, 237, 209);
    ellipse(moleX, moleY+10, 33, 28); 
    fill(0, 0, 0);
    ellipse(moleX-10, moleY-15, 10, 10); // eyes
    ellipse(moleX+10, moleY-15, 10, 10);
    ellipse(moleX, moleY-5, 10, 10); // nose
    ellipse(moleX, moleY+10, 20, 5); // mouth
};
var count = 0;
mouseClicked = function(){

if(count==0){
drawMole(200, 185);
count=1;
}
else if(count==1){
drawMole(70, 105);
count=2;
}
else if(count==2){
drawMole(300, 45);
count=3;}
else if(count==3){
drawMole(295,335);
count=4;}

else{
drawMole(random(0,600), random(0,400));
drawMole(random(0,600), random(0,400));
drawMole(random(0,600), random(0,400));
drawMole(random(0,600), random(0,400));
drawMole(random(0,600), random(0,400));
}
};