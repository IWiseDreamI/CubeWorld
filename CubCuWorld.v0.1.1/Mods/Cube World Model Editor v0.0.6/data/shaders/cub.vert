attribute vec3 vertexPosition;
attribute vec3 vertexColour;
attribute vec3 vertexNormal;

uniform mat4 projection_matrix;
uniform mat4 modelview_matrix;
uniform mat4 model_matrix;

varying vec3 colour;
varying vec3 normal;

void main()
{
	gl_Position = projection_matrix * modelview_matrix * vec4(vertexPosition.xyz, 1.0);
	colour.rgb = vertexColour.rgb;
	normal.xyz = (model_matrix * vec4(vertexNormal.xyz, 0.0)).xyz;
}