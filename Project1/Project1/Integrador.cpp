#include <iostream>

using namespace std;
void Euler_Integrator(float& pos, float& vel, float& a, float& dt) {
	pos += (vel * dt);
	vel += a * dt;
}

int main()
{

	float pos = 0;
	float vel = 5;
	float a = 0;
	float dt = (1.0f / 30.0f);
	cout << "||   Euler_Integrator   ||" << endl << endl;

	Euler_Integrator(pos, vel, a, dt);
	cout << "position: " << pos << endl;
	cout << "velocity: " << vel << endl;
	cout << "acceleration: " << a << endl;
	Euler_Integrator(pos, vel, a, dt);
	cout << "position 2: " << pos << endl;
	cout << "velocity 2: " << vel << endl;
	cout << "acceleration 2: "<< a << endl;


	system("pause");
}