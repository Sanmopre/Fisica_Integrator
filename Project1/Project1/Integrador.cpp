#include <iostream>
#include "Integrador.h"

using namespace std;

void Euler_Integrator(float& pos, float& vel, float& a, float& dt) {
	pos += (vel * dt);
	vel += a * dt;
}

void Move_x_axis(float dt) {
	float posx = 0;
	float velx = 5;
	float ax = 8;
	cout << "Case moving on x-axis" << endl << endl;
	cout << "Initial position: " << posx << endl;
	cout << "Initial velocity: " << velx << endl;
	cout << "Constant acceleration: " << ax << endl << endl;
	Euler_Integrator(posx, velx, ax, dt);
	cout << "position next frame: " << posx << endl;
	cout << "velocity next frame: " << velx << endl;
	cout << "Constant acceleration: " << ax << endl << endl;
}

void Move_y_axis(float dt) {
	float posy = 0;
	float vely = 5;
	float g = -10;

	cout << "Case of a falling object" << endl << endl;
	cout << "Initial position Y: " << posy << endl;
	cout << "Initial velocity Y: " << vely << endl;
	cout << "Constant gravity: " << g << endl << endl;
	Euler_Integrator(posy, vely, g, dt);
	cout << "position Y next frame: " << posy << endl;
	cout << "velocity Y next frame: " << vely << endl;
	cout << "constant gravity: " << g << endl << endl;
	if ((1.0f / dt) == 1) {
		Euler_Integrator(posy, vely, g, dt);
		cout << "position Y next frame: " << posy << endl;
		cout << "velocity Y next frame: " << vely << endl;
		cout << "constant gravity: " << g << endl << endl;
		Euler_Integrator(posy, vely, g, dt);
		cout << "position Y next frame: " << posy << endl;
		cout << "velocity Y next frame: " << vely << endl;
		cout << "constant gravity: " << g << endl;
	}
}

void Drag_Bullet(float dt) {
	float posb = 0;
	float velb = 5;
	float abullet = 20;
	float airdensity = 1.225f;
	float areab = 0.0025f;
	float massb = 0.1f;
	float Cdb = 0.04f;
	float Fdb = 0.5f * airdensity * (velb * velb) * areab * (Cdb);
	float adragb = Fdb / massb;
	float ab = abullet - adragb;

	cout << "Case of a bullet moving with adverse drag force" << endl;
	cout << "Bullet with an area of 0,0025m^2, a mass of 0,1kg and an acceleration of 20m/s^2" << endl << endl;

	cout << "Initial position of a bullet with drag: " << posb << endl;
	cout << "Initial velocity of a bullet with drag: " << velb << endl;
	cout << "acceleration of a bullet with drag: " << ab << endl << endl;
	Euler_Integrator(posb, velb, ab, dt);
	cout << "position of a bullet with drag next frame: " << posb << endl;
	cout << "velocity of a bullet with drag next frame: " << velb << endl;
	cout << "acceleration of a bullet with drag: " << ab << endl;
}

void Drag_CannonBall(float dt) {
	float posc = 0;
	float velc = 5;
	float ax = 2;
	float airdensity = 1.225f;
	float area = 2;
	float mass = 10;
	float Cd = 0.47f;
	float Fd = 0.5f * airdensity * (velc * velc) * area * (Cd);
	float adrag = Fd / mass;
	float ac = ax - adrag;

	cout << "Case of a cannon ball moving with adverse drag force" << endl;
	cout << "Cannonball with an area of 2m^2, a mass of 10kg and the same acceleration of case 1 (8m/s^2)" << endl << endl;

	cout << "Initial position with drag: " << posc << endl;
	cout << "Initial velocity with drag: " << velc << endl;
	cout << "acceleration with drag: " << ac << endl << endl;
	Euler_Integrator(posc, velc, ac, dt);
	cout << "position of a cannonball with drag next frame: " << posc << endl;
	cout << "velocity of a cannonball with drag next frame: " << velc << endl;
	cout << "acceleration of a cannonball with drag: " << ac << endl << endl;
}

int main()
{
	float framerate;
	cout << "Introduce framerate:";
	cin >> framerate;
	cout<<endl;
	float dt = (1.0f / framerate);

	cout << "||   Euler Integrator   ||" << endl << endl;

	Move_x_axis(dt);
	cout << "--------------------------------------------------------" << endl;
	Move_y_axis(dt);
	cout << "--------------------------------------------------------" << endl;
	Drag_CannonBall(dt);
	cout << "--------------------------------------------------------" << endl;
	Drag_Bullet(dt);
	cout << endl;

	system("pause");
}