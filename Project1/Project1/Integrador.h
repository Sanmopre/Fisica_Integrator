
void Euler_Integrator(float& pos, float& vel, float& a, float& dt);
//For the case an object moves in the X-axis 
void Move_x_axis(float dt);

//For the case an object moves in the Y-axis
void Move_y_axis(float dt);

//For the cases a drag force is existent 

//cannonball case (a cannon ball with 10kg of mass, 2m^2 of area)
void Drag_CannonBall(float dt);

//bullet case (a bullet with 0.1kg of mass, 0.0025m^2 of area)
void Drag_Bullet(float dt);
