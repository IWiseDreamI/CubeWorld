uniform mat4 projection_matrix;
uniform mat4 modelview_matrix;

void main()
{
	gl_Position = projection_matrix * modelview_matrix * gl_Vertex;
	gl_TexCoord[0] = gl_MultiTexCoord0;
}