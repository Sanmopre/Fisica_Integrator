#include <iostream>
#include "Integrador.h"

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