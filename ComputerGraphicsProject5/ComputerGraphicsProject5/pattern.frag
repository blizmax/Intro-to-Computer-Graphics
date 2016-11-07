////#version 330 compatibility
////
////uniform float	uTime;		// "Time", from Animate( )
////in vec2  	vST;		// texture coords
////
////void
////main( )
////{
////    vec3 myColor = vec3( ??? );
////    if( ??? )
////    {
////        myColor = vec3( ??? );
////    }
////    gl_FragColor = vec4( myColor,  1. );
////}
//
//#version 130
//
//uniform float uKa, uKd, uKs; // coefficients of each type of lighting
//uniform vec3 uColor; // object color
//uniform vec3 uSpecularColor; // light color
//uniform float uShininess; // specular exponent
//in vec2 vST; // texture cords
//in vec3 vN; // normal vector
//in vec3 vL; // vector from point to light
//in vec3 vE; // vector from point to eye
//flat in int inbounds;
//flat in int stripe;
//
//void
//main( )
//{
//    vec3 Normal = normalize(vN);
//    vec3 Light = normalize(vL);
//    vec3 Eye = normalize(vE);
//    vec3 myColor = uColor;
//    if(inbounds > 0)
//    {
//        myColor = vec3( 0., 0.6, 0.8 );
//    }
//    vec3 ambient = uKa * myColor;
//    float d = max( dot(Normal,Light), 0. ); // only do diffuse if the light can see the point
//    myColor = uColor;
//    if(stripe > 0)
//    {
//        myColor = vec3( 1., 0., 0. );
//    }
//    vec3 diffuse = uKd * d * myColor;
//    gl_FragColor = vec4( ambient + diffuse, 1. );
//}

#version 130

void main()
{
    gl_FragColor = vec4( .5, 1., 0., 1. );
}
