#include <iostream>

using namespace std;
void Euler_Integrator(float& pos, float& vel, float& a, float& dt) {
	pos += (vel * dt);
	vel += a * dt;
}



int main()
{
	//For the case an object moves in the X-axis
	float pos = 0;
	float vel = 5;
	float a = 8;
	float dt = (1.0f / 30.0f);
	
	//For the case an object moves in the Y-axis
	float posy = 0;
	float vely = 5;
	float g = 10;

	//For the case a drag force is existent ( a cannon ball with 10kg of mass, 2m^2 of area)
	//cannonball case
	float posc = 0;
	float velc = 5;
	float airdens = 1.225f;
	float area = 2;
	float mass = 10;
	float Cd = 0.47f;
	float half = 0.5f;
	float Fd = (half) * airdens * (velc * velc) * area * (Cd);
	float adrag = Fd / mass;
	float ac = a - adrag;
	//bullet case
	float posb = 0;
	float velb = 5;
	float abullet = 20;
	float areab = 0.0025f;
	float massb = 0.1f;
	float Cdb = 0.04f;
	float Fdb = Fd = (half)* airdens * (velb * velb) * areab * (Cdb);
	float adragb = Fdb / massb;
	float ab = abullet - adragb;
	
	cout << "||   Euler Integrator   ||" << endl << endl;

	Euler_Integrator(pos, vel, a, dt);
	cout << "position: " << pos << endl;
	cout << "velocity: " << vel << endl;
	cout << "acceleration: " << a << endl;
	Euler_Integrator(pos, vel, a, dt);
	cout << "position 2: " << pos << endl;
	cout << "velocity 2: " << vel << endl;
	cout << "acceleration 2: " << a << endl << endl;
	cout << "--------------------------------------------------------" << endl;
	cout << "Case of a falling object" << endl;
	Euler_Integrator(posy, vely, g, dt);
	cout << "position Y: " << posy << endl;
	cout << "velocity Y: " << vely << endl;
	cout << "gravity: " << g << endl;
	Euler_Integrator(posy, vely, g, dt);
	cout << "position Y: " << posy << endl;
	cout << "velocity Y: " << vely << endl;
	cout << "gravity: " << g << endl;
	cout << "--------------------------------------------------------" << endl;
	cout << "Case of an object moving with adverse drag force" << endl << endl;
	cout << "This is the case of a cannonball with an area of 2m^2, a mass of 10kg and the same acceleration of case 1 (8m/s^2)" << endl << endl;
	Euler_Integrator(posc, velc, ac, dt);
	cout << "position with drag: " << posc << endl;
	cout << "velocity with drag: " << velc << endl;
	cout << "acceleration with drag: " << ac << endl;
	Euler_Integrator(posc, velc, ac, dt);
	cout << "position of a cannonball with drag: " << posc << endl;
	cout << "velocity of a cannonball with drag: " << velc << endl;
	cout << "acceleration of a cannonball with drag: " << ac << endl << endl;
	cout << "This is the case of a bullet with an area of 0,0025m^2, a mass of 0,1kg and an acceleration of 20m/s^2" << endl << endl;
	Euler_Integrator(posb, velb, ab, dt);
	cout << "position of a bullet with drag: " << posb << endl;
	cout << "velocity of a bullet with drag: " << velb << endl;
	cout << "acceleration of a bullet with drag: " << ab << endl;
	Euler_Integrator(posb, velb, ab, dt);
	cout << "position of a bullet with drag: " << posb << endl;
	cout << "velocity of a bullet with drag: " << velb << endl;
	cout << "acceleration of a bullet with drag: " << ab << endl;


	
	






	system("pause");
}