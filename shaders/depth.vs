#version 330 core
layout (location = 0) in vec3 position;

uniform mat4 lightSpaceMatrix;
uniform mat4 model;
uniform mat4 rot_ametralladoras;
uniform int indice;

vec4 temp;

void main()
{

	if (indice == 1 || indice == 2)
		temp = lightSpaceMatrix * model * rot_ametralladoras * vec4(position, 1.0f);
	else
		temp = lightSpaceMatrix * model * vec4(position, 1.0f);
	
	gl_Position = temp;

}  