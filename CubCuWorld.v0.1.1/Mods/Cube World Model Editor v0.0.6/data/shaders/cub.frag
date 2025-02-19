varying vec3 colour;
varying vec3 normal;

void main()
{
	vec3 l0 = normalize(vec3(-0.4, 0.5, -0.6));
	vec3 l1 = normalize(vec3(0.4, 0.5, 0.6));

	float ndotl0 = clamp(dot(normalize(normal), l0), 0.0, 1.0);
	float ndotl1 = clamp(dot(normalize(normal), l1), 0.0, 1.0);

	vec3 diffuse = vec3(ndotl0);
	diffuse.rgb += vec3(ndotl1);
	diffuse.rgb += vec3(0.2);
	diffuse.rgb = clamp(diffuse.rgb, 0.0, 1.0);
	
	gl_FragColor = vec4(diffuse.rgb * colour.rgb, 1.0);
}