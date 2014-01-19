PImage logo;
String baseImageUrl;
PImage baseImage;
void setup() {
  logo=loadImage("Brazzers-logo.png");
  baseImageUrl="http://i.imgur.com/Ac8sy7N.jpg";
  baseImage=loadImage(baseImageUrl);
  size(baseImage.width, baseImage.height);
}

void draw() {
  image(baseImage, 0, 0);
  addWatermark();
}

void addWatermark() {
  float rescaledLogoWidth=width/3;
  float rescaledLogoHeight=rescaledLogoWidth/(logo.width)*logo.height;
  image(logo, width-1.1*rescaledLogoWidth, height-1.1*rescaledLogoHeight, rescaledLogoWidth, rescaledLogoHeight);
}

