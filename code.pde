int daypassed = 1;
int timenextday = 0;
int raider = round(random(1,5));
int raidcount = 1;
int raidtime = 0;
int raidattack = 0;
int siegetime = 0;
int siegecount = 1;
int siegepower = 5;
int siegeamount = 10;
int wallsieged = 0;
int housing = round(random(3,10));
int money = round(random(900,1200));
int weapon = round(random(3,5));
int food = round(random(10,30));
int medikit = round(random(10,15));
int newmember = 0;
int news = 0;
int newsview = 0;
int talk = 0;
int talkview = 0;
int[] wallhp = {100,100,100,100};

var click = new Howl({
  urls: ['sound/click.mp3', 'sound/click.ogg']
});

var click2 = new Howl({
  urls: ['sound/click2.mp3', 'sound/click2.ogg']
});

var boom = new Howl({
  urls: ['sound/boom.mp3', 'sound/boom.ogg']
});

var boom2 = new Howl({
  urls: ['sound/boom2.mp3', 'sound/boom2.ogg']
});

var shoot = new Howl({
  urls: ['sound/shoot.mp3', 'sound/shoot.ogg']
});

var shoot2 = new Howl({
  urls: ['sound/shoot2.mp3', 'sound/shoot2.ogg']
});

var sniper = new Howl({
  urls: ['sound/sniper.mp3', 'sound/sniper.ogg']
});

var pill = new Howl({
  urls: ['sound/medikit.mp3', 'sound/medikit.ogg']
});

void setup()
{
  noCursor();
  size(1420, 799);
  stroke(255);
  PFont fontA = loadFont("courier");
  textFont(fontA, 30);
  strokeWeight(10);
}

void draw(){  
  if (siegetime == 1) {background(30,0,0);} else {background(0,30,0);};
  
  textSize(30);
  fill(255,255,0);
  rotate(-0.85);
  text(wallhp[0] + " HP",-100,275);
  rotate(0.85);
  stroke(230,230,230); fill(255,255,255);strokeWeight(10);
  if (wallsieged == 0 && siegetime == 1) {stroke(230,130,0);fill(255,155,0);};
  if (wallhp[0] < 40) {stroke(230,0,0);fill(255,0,0);};
  if (wallhp[0] > 0) {
    line(350,50,50,380);
    line(350,60,50,390);
    line(350,70,50,400);
    line(350,80,50,410);
    line(350,90,50,420);
    line(350,100,50,430);
  };
  
  textSize(30);
  fill(255,255,0);
  rotate(0.6);
  text(wallhp[1] + " HP",420,360);
  rotate(-0.6);
  stroke(240,240,240); fill(255,255,255);strokeWeight(10);
  if (wallsieged == 1 && siegetime == 1) {stroke(240,140,0);fill(255,155,0);};
  if (wallhp[1] < 40) {stroke(240,0,0);fill(255,0,0);};
  if (wallhp[1] > 0) {
    line(50,380,430,640);
    line(50,390,430,650);
    line(50,400,430,660);
    line(50,410,430,670);
    line(50,420,430,680);
    line(50,430,430,690);
  };
  
  textSize(30);
  fill(255,255,0);
  rotate(0.6);
  text(wallhp[3] + " HP",490,-170);
  rotate(-0.6);
  stroke(225,225,225); fill(255,255,255);strokeWeight(10);
  if (wallsieged == 3 && siegetime == 1) {stroke(225,125,0);fill(255,155,0);};
  if (wallhp[3] < 40) {stroke(225,0,0);fill(255,0,0);};
  if (wallhp[3] > 0) {
    line(730,300,350,50);
    line(730,310,350,60);
    line(730,320,350,70);
    line(730,330,350,80);
    line(730,340,350,90);
    line(730,350,350,100);
  };
  
  textSize(30);
  fill(255,255,0);
  rotate(-0.87);
  text(wallhp[2] + " HP",-50,810);
  rotate(0.87);
  stroke(240,240,240); fill(255,255,255);strokeWeight(10);
  if (wallsieged == 2 && siegetime == 1) {stroke(240,140,0);fill(255,155,0);};
  if (wallhp[2] < 40) {stroke(240,0,0);fill(255,0,0);};
  if (wallhp[2] > 0) {
    line(430,640,730,300);
    line(430,650,730,310);
    line(430,660,730,320);
    line(430,670,730,330);
    line(430,680,730,340);
    line(430,690,730,350);
  };
  textSize(30);
  
  fill(255,255,255);
  text("Day " + daypassed,10,30);
  
  fill(255,255,255);
  text(housing + "/60 People",210,30);
  
  fill(255,255,0);
  if (raidtime <=0) {text("> <",435,32)};
  
  fill(255,255,255);
  if (raider == 0) {fill(255,0,0)};
  text(raider + "/15 Raiders",510,30);
  
  fill(255,255,0);
  if (raidtime <= 0 && raider > 0 && raider <= food && siegetime == 0) {text("Raid",580,80)};
  
  textSize(27);
  fill(255,255,255);
  text("Vault",430,255);
  text("$" + money,420,285);
  
  fill(255,255,0);
  text("Armoury",220,445);
  fill(255,255,255);
  if (raidtime <= 0) {
    if (raider > weapon) {fill(255,155,0)};
    if (weapon == 0) {fill(255,0,0)};
    if (weapon < 10) {text(weapon + "/15",235,470);};
    if (weapon >= 10) {text(weapon + "/15",230,470);};
  } else {
    text("?/15",210,790);
  };
  
  fill(255,255,0);
  text("Food",230,285);
  fill(255,255,255);
  if (raider > food || housing + raider > food) {fill(255,155,0)};
  if (food == 0) {fill(255,0,0)};
  if (food < 10) {text(food + "/90",229,310);};
  if (food >= 10) {text(food + "/90",224,310);};
  
  
  fill(255,255,0);
  text("Medikits",460,430);
  fill(255,255,255);
  if (medikit == 0) {fill(255,0,0)};
  if (medikit < 10) {text(medikit + "/20",490,455);};
  if (medikit >= 10) {text(medikit + "/20",480,455);};
  fill(255,255,255);
  
  if ((random(1) > 0.997) && medikit >= 2 && housing > 0) {
    if ((random(1)) > 0.3) {
      medikit -= 2;
      housing += 1;
      news = 7;
      newsview = 150;
    };
    if (housing > 60) {
      housing = 60;
    };
  };
  
  if (raidtime > 0) {
    raidtime -= 1/(raider*raidcount);
    if ((random(1) > 0.7)) {
      money += round(random((raider/(raidcount*10)),(70*(raider/(raidcount*10)))));
    };
    
    if (random(1) > 0.992 && weapon < raider) {
      raidattack = 1;
    };
    
    if (raidattack == 1) {
      if (random(1) > 0.9) {
        if(random(1) > 0.5) {shoot.play();} else {shoot2.play();};
      };
      talk = 5;
      talkview = 150;
      if (random(1) > 0.997) {
        sniper.play();
        raider -= 1;
        news = 2;
        newsview = 150;
      };
      if (random(1) > 0.998) {
        if(random(1) > 0.5) {boom.play();} else {boom2.play();};
        raider -= round(random(raider));
        news = 12;
        newsview = 150;
      };
      if (random(1) > 0.996) {
        if (random(1) > 0.5 && medikit >= 3) {
          medikit -= 3;
          news = 1;
          newsview = 150;
        } else {
          raider -= 1;
          news = 13;
          newsview = 150;
        };
      };
      if (raider < 0) {raider = 0; raidtime = 0;};
    };
    
    if (raidattack == 0) {
      if ((random(1) > 0.999)) {
        newmember = (round(random(raider + 1)));
        if ((raider + newmember) <= 15) {
          raider += newmember;
          news = 3;
          newsview = 150;
        }
      };
    
      if ((random(1) > 0.995)) {
        food += (round(random(raider + 1)));
        news = 4;
        newsview = 150;
        if (food > 90) {
          food = 90;
        };
      };
    
      if ((random(1) > 0.998)) {
        weapon += (round(random(raider + 1)));
        news = 5;
        newsview = 150;
        if (weapon > 15) {
          weapon = 15;
        };
      };
    };
    
    if ((random(1) > 0.995)) {
        weapon -= 1;
        news = 6;
        newsview = 150;
        if (weapon < 0) {
          weapon = 0;
        };
      };
    
    if (raidattack == 1 && weapon >= raider) {
      raidattack = 0;
      talk = 7;
      talkview = 150;
    };
    
    if (raidattack == 1 && raidtime < 1) {
      raidattack = 0;
      talk = 7;
      talkview = 150;
    };
    
    stroke(255,255,255);
    line(510,45,510 + raidtime,45);
  };
  
  if (newsview > 0) {
    newsview -= 1;
    textSize(30);
    fill(0,255,0);
    if (news == 3) {text("Raider team found survivor.",10,760)};
    if (news == 4) {text("Raider team found food.",10,760)};
    if (news == 5) {text("Raider team found weaponry.",10,760)};
  
    fill(255,155,0);
    if (news == 1) {text("Raider team injured. Wounds taken care of.",10,760)};
    if (news == 6) {text("A weapon malfunctioned.",10,760)};
    if (news == 10) {text("The bunker is under siege!",10,760)};
    
    fill(255,0,0);
    if (news == 2) {text("A raider was shot by a sniper.",10,760)};
    if (news == 9) {text("People died of famine.",10,760)};
    if (news == 12) {text("Some raiders were blown up.",10,760)};
  
    fill(255,255,255);
    if (news == 11) {text("The siege has ended.",10,760)};
    if (news == 7) {text("Taken in and healed an injured person.",10,760)};
  };
  
  if (talkview > 0) {
    talkview -= 1;
    textSize(20);
    fill(0,255,0);
    if (talk == 1) {text("We have more people than them, stop the siege!",10,790)};
    if (talk == 4) {text("Go and never come back, losers!",10,790)};
  
    fill(255,155,0);
    if (talk == 2) {text("Just a few more weapons and we can defeat them!",10,790)};
    if (talk == 5) {text("The raiders are under attack!",10,790)};
  
    fill(255,0,0);
    if (talk == 6) {text("We need backup!",10,790)};
  
    fill(255,255,255);
    if (talk == 3) {text("Finally, they had gone away!",10,790)};
    if (talk == 7) {text("The attack on the raiders had stopped.",10,790)};
  
    textSize(30);
  };
  
  
  if (timenextday < 1000) {
    timenextday += 1;
  } else {
    timenextday = 0;
    daypassed += 1;
    if ((random(1)) > 0.3 && siegetime == 1) {
      siegetime = 0;
      news = 11;
      newsview = 150;
      talk = 3;
      talkview = 150;
    };
    if (food > housing + raider) {
      food -= housing + raider;
    } else {
      food = 0;
      housing -= (round(random((housing - food))));
      raider -= (round(random((2))));
      if (raider < 0) {raider = 0};
      news = 9;
      newsview = 150;
    };
  };
  
  if ((random((1 + (raidcount/1000)))) > 0.9998 && siegetime == 0 && raidcount > 1.3 && raidtime <= 0) {
    siegeamount = round(random((housing + raider),(housing + 4 + (raider*2))));
    siegepower = round(random(5));
    siegetime = 1;
    siegecount += 1;
    wallsieged = (round(random(3)));
    news = 10;
  };
  
  if (siegetime == 1) {
    text(siegeamount + " Enemies",210,60);
    
    if ((housing + (raider*2)) < siegeamount || raider > weapon) {
      talk = 6;
      talkview = 150;
      if ((random((1+(siegeamount/200)))) > 0.99 && wallhp[wallsieged] > 0) {
        if(random(1) > 0.5) {boom.play();} else {boom2.play();};
        wallhp[wallsieged] -= round(random(siegepower));
        if (wallhp[wallsieged] < 0) {wallhp[wallsieged] = 0};
      };
    
      if ((random(1)) > 0.9999 && wallhp[wallsieged] == 0 && wallsieged == 0 && weapon <= 0 && raider > 0) {
        if(random(1) > 0.5) {shoot.play();} else {shoot2.play();};
        raider -= 1;
        if (raider < 0) {raider = 0};
      };
    
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && wallsieged == 0 && food > 0) {
        if(random(1) > 0.5) {boom.play();} else {boom2.play();};
        food -= round(random(2));
        if (food < 0) {food = 0};
      };
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && food == 0) {
        wallsieged = (round(random(3)));
      };
    
    
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && wallsieged == 1 && weapon > 0) {
        if(random(1) > 0.5) {boom.play();} else {boom2.play();};
        weapon -= 1;
        if (weapon < 0) {weapon = 0};
      };
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && weapon == 0) {
        wallsieged = (round(random(3)));
      };
    
    
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && wallsieged == 2 && medikit > 0) {
        if(random(1) > 0.5) {boom.play();} else {boom2.play();};
        medikit -= 1;
        if (medikit < 0) {medikit = 0};
      };
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && medikit == 0) {
        wallsieged = (round(random(3)));
      };
    
    
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && wallsieged == 3 && money > 0) {
        if(random(1) > 0.5) {boom.play();} else {boom2.play();};
        money -= round(random(100));
        if (money < 0) {money = 0};
      };
      if ((random((1+(siegeamount/300)))) > 0.999 && wallhp[wallsieged] == 0 && money == 0) {
        wallsieged = (round(random(3)));
      };
    };
    
    if (raider <= weapon && (housing + (raider*2)) >= siegeamount) {
      talk = 1;
      talkview = 150;
      if ((random(1)) > 0.7) {if(random(1) > 0.5) {shoot.play();} else {shoot2.play();};};
      if ((random(1)) > 0.95) {
        siegeamount -= round(random((housing + (raider*2)) - siegeamount));
        if(random(1) > 0.2) {raider -= round(random((siegeamount/4)));} else {housing -= round(random((siegeamount/4)));};
        if (raider < 0) {raider = 0};
        if (housing < 0) {housing = 0};
      };
    };
    
    if (siegeamount < 3) {
      talk = 4;
      talkview = 150;
      siegetime = 0;
      news = 11;
      newsview = 150;
    };
    
    if (raider > weapon && (housing + (raider*2)) >= siegeamount) {
      talk = 2;
      talkview = 150;
      if(random(1) > 0.999) {
        if(random(1) > 0.5 && medikit >= 3) {
          medikit -= 3;
        } else {
          raider -= round(random((siegeamount/4)));
        };
        if(random(1) > 0.5) {shoot.play();} else {shoot2.play();};
      };
    };
  };
  
  stroke(60);
  fill(60);
  rect(800,0,1420,700);
  stroke(8,11,0);
  strokeWeight(50);
  line(800,0,800,799);
  line(800,540,1420,540);
  fill(255);
  
  if (housing <= 0 && raider <= 0) {
    text("LEVEL " + ((round(raidcount*2)) + (round(housing/2)) + (round(money/1000))+ daypassed + (siegecount*2)) + " FAILURE. REFRESH PAGE",820,550);
  } else {
    text("LEVEL " + ((round(raidcount*2)) + (round(housing/2)) + (round(money/1000))+ daypassed + (siegecount*2)) + " FACTION",820,550);
  };
  
  textSize(70);
  text("FACTION MASTER",830,780);
  
  if (siegetime == 1 || dist(1115,493,mouseX,mouseY) < 80) {
    textSize(30);
    text("Bunker Under Siege!",850,30);
    textSize(17);
    text("You're not the only faction that can raid!",850,60);
    textSize(15);
    text("Sieges begin to appear after a few raidings.",850,80);
    
    textSize(20);
    text("Walls                            $60 for 10HP",850,140);
    textSize(14);
    text("The enemies will try to smash through your bunker's walls!",850,170);
    textSize(14);
    text("Click on them to repair them to a maximum of 150HP.",850,190);
    textSize(14);
    text("If the walls break your resources will be looted!",850,210);
    
    textSize(20);
    text("Defending The Bunker",850,270);
    textSize(14);
    text("The people in the bunker will engage in combat when they have an",850,290);
    textSize(14);
    text("advantage. Your raiders must have enough weapons, and when you",850,310);
    textSize(14);
    text("have more people and raiders on your side, the firefight will",850,330);
    textSize(14);
    text("begin! A few medikits will be handy.",850,350);
    
    textSize(20);
    text("Ending The Siege",850,410);
    textSize(14);
    text("Kill all enemies or wait for them to tire out.",850,430);
    
    fill(155);
    textSize(26);
    text(" -----------> About Sieges <-----------",810,500);
    fill(255);
  };
  
  if (siegetime == 0 && dist(610,80,mouseX,mouseY) < 30) {
    textSize(30);
    text("Raiding",850,30);
    textSize(17);
    text("Raiding is your source of money, food and weapons!",850,60);
    textSize(15);
    text("Your raiders need food to raid.",850,80);
    
    textSize(20);
    text("Amount of Raiders",850,140);
    textSize(14);
    text("The amount of raiders will affect the amount of time used, but",850,170);
    textSize(14);
    text("the amount of loot will also increase!",850,190);
    
    textSize(20);
    text("Under Attack!",850,250);
    textSize(14);
    text("When you have more raiders than weapons, other pack of raiders",850,270);
    textSize(14);
    text("will try to attack them! During this time, the raiders will not",850,290);
    textSize(14);
    text("collect loot other than weapons to defend themselves. Basic attacks",850,310);
    textSize(14);
    text("can be countered with enough medikits, but the devastating sniper",850,330);
    textSize(14);
    text("and explosions that kills multiple raiders cannot!",850,350);
    
    textSize(20);
    text("Fame",850,410);
    textSize(14);
    text("The more you raid, the more famous your raiding team gets. This",850,430);
    textSize(14);
    text("increases the loot you get, but more people will want to siege",850,450);
    textSize(14);
    text("your bunker for revenge!",850,470);
    
    textSize(26);
    text(" -----------> About Sieges <-----------",810,500);
  };
  
  if (siegetime == 0 && dist(610,80,mouseX,mouseY) > 30 && dist(1115,493,mouseX,mouseY) > 80) {
    textSize(30);
    text("Basics",850,30);
    textSize(17);
    text("Clicking 'Weaponry', 'Food' or 'Medikit' will buy them.",850,60);
    textSize(15);
    text("In fact, everything in yellow can be clicked! Try them out.",850,80);
    textSize(20);
    
    text("Weaponry                          $300 for 2",850,140);
    textSize(14);
    text("Make sure you have enough weapons for every raider, or they will",850,170);
    textSize(14);
    text("Be vulnerable to attacks when raiding! Weapons are also needed",850,190);
    textSize(14);
    text("to successfully defend against sieges.",850,210);
    
    textSize(20);
    text("Food                              $100 for 3",850,270);
    textSize(14);
    text("Make sure you have enough food for everyone by the end of the",850,290);
    textSize(14);
    text("day, or they will starve to death.",850,310);
    
    textSize(20);
    text("Medikits                          $300 for 4",850,370);
    textSize(14);
    text("Good stuff that can be used to bring injured outsiders into",850,390);
    textSize(14);
    text("your faction! It has also a chance of saving your raiders when",850,410);
    textSize(14);
    text("they are under attack.",850,430);
    
    textSize(26);
    text(" -----------> About Sieges <-----------",810,500);
  };
  textSize(30);
  
  stroke(0,255,0);
  strokeWeight(10);
  if (dist(610,80,mouseX,mouseY) < 30 || dist(460,775,mouseX,mouseY) < 80 || dist(260,775,mouseX,mouseY) < 80 || dist(660,775,mouseX,mouseY) < 80 || dist(435,32,mouseX,mouseY) < 15 || (475,32,mouseX,mouseY) < 15 || dist(135,300,mouseX,mouseY) < 30 || dist(225,515,mouseX,mouseY) < 30 || dist(575,415,mouseX,mouseY) < 30 || dist(475,230,mouseX,mouseY) < 30) {stroke(255,255,0);strokeWeight(15);};
  line(mouseX,mouseY,mouseX,mouseY);
  text(mouseX + ", " + mouseY, mouseX,mouseY);
  stroke(255,255,255);
  strokeWeight(10);
}

void mouseClicked() {
  if (random(1) > 0.5) {click.play();} else {click2.play();};
  if (dist(610,80,mouseX,mouseY) < 30 && raidtime <= 0 && raider > 0 && raider <= food && siegetime == 0) {
    raidtime = 222;
    raidcount += 0.1;
    food -= raider;
  };
  
  if (dist(261,279,mouseX,mouseY) < 30 && money >= 100 && food <= 90) {
    food += 3;
    money -= 100;
    if (food > 90) {
      food = 90;
    };
  };
  
  if (dist(276,439,mouseX,mouseY) < 50 && money >= 300 && weapon <= 15 && raidtime <= 0) {
    weapon += 2;
    money -= 300;
    if (weapon > 15) {
      weapon = 15;
    };
  };
  
  if (dist(527,421,mouseX,mouseY) < 60 && money >= 300 && medikit <= 20) {
    medikit += 4;
    money -= 300;
    if (medikit > 20) {
      medikit = 20;
    };
  };
  
  if (dist(435,32,mouseX,mouseY) < 15 && housing > 1 && raider < 15 && raidtime <= 0) {
    housing -= 1;
    raider += 1;
  };
  
  if (dist(475,32,mouseX,mouseY) < 15 && raider >= 1 && housing < 60 && raidtime <= 0) {
    housing += 1;
    raider -= 1;
  };
  
  if (dist(169,211,mouseX,mouseY) < 50 && wallhp[0] < 150 && money > 60) {
    wallhp[0] += 10;
    money -= 60;
    if (wallhp[0] > 150) {wallhp[0] = 150;};
  };
  
  if (dist(548,158,mouseX,mouseY) < 50 && wallhp[3] < 150 && money > 60) {
    wallhp[3] += 10;
    money -= 60;
    if (wallhp[3] > 150) {wallhp[3] = 150;};
  };
  
  if (dist(613,515,mouseX,mouseY) < 50 && wallhp[2] < 150 && money > 60) {
    wallhp[2] += 10;
    money -= 60;
    if (wallhp[2] > 150) {wallhp[2] = 150;};
  };
  
  if (dist(191,555,mouseX,mouseY) < 50 && wallhp[1] < 150 && money > 60) {
    wallhp[1] += 10;
    money -= 60;
    if (wallhp[1] > 150) {wallhp[1] = 150;};
  };
};