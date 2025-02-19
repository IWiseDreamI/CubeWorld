uniform sampler2D baseSampler0;
uniform vec3 colour;

void main()
{
	gl_FragColor = vec4(texture2D(baseSampler0, gl_TexCoord[0].xy).rgb * colour.rgb, 1.0);
}