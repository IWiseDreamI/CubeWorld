uniform sampler2D baseSampler0;
varying vec4 colour;

void main()
{
	vec4 textureColour = texture2D(baseSampler0, gl_TexCoord[0].xy);
	gl_FragColor = textureColour * colour;
}