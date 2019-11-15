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

	Euler_Integrator(pos, vel, a, dt);
	cout << pos << endl << vel << endl << a << endl;

	Euler_Integrator(pos, vel, a, dt);
	cout << pos << endl << vel << endl << a;


	system("pause");
}