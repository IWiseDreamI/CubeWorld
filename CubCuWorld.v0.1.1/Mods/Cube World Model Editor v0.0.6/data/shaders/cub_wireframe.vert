attribute vec3 vertexPosition;

uniform mat4 projection_matrix;
uniform mat4 modelview_matrix;

void main()
{
	vec4 v = modelview_matrix * vec4(vertexPosition.xyz, 1.0);
	v.w += 0.01;
	gl_Position = projection_matrix * v;
}