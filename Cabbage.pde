class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class

  Cabbage(float x, float y){
    super(x, y);
  }
  
  void display(){
    image(cabbage, x, y);
  }
  
  void checkCollision(Player player){
    if(isHit(x, y, SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){
      
      player.health++;
      
      isAlive = false;
    }
  }
}
