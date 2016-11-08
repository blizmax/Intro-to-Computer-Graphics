uniform float	uTime;		// "Time", from Animate( )
uniform float uSize;
uniform vec3 uColor; // object color
uniform float uS0, uT0;
varying vec2  	vST;		// texture coords

varying vec3 vColor;

void main()
{
    vec3 myColor = uColor;
    float diff = (sin(2.*3.14*uTime));
    
    // Stripes
    if( uS0-uSize <= vST.s && vST.s <= uS0+uSize && uT0-(uSize * diff)/2. <= vST.t && vST.t <= uT0+(uSize * diff)/2. )
    {
        myColor = vec3( 1., 1., 0. );
    }
    
    gl_FragColor = vec4(myColor, 1.);
}
