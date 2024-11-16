//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	
	//variavel para a minha cor
	vec4 cor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	//deixando ela branca
	cor.rgb = vec3(1,1,1);
	
    gl_FragColor = cor;
}