uniform mat4 projection_matrix;
varying vec4 colour;

void main()
{
	gl_Position = projection_matrix * gl_Vertex;
	gl_TexCoord[0] = gl_MultiTexCoord0;
	colour = gl_Color;
}