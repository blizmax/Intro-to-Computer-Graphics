////#version 330 compatibility
////
////uniform float	uTime;		// "Time", from Animate( )
////out vec2  	vST;		// texture coords
////
////const float PI = 	3.14159265;
////const float AMP = 	0.2;		// amplitude
////const float W = 	2.;		// frequency
////
////void
////main( )
////{
////    vST = gl_MultiTexCoord0.st;
////    vec3 vert = gl_Vertex.xyz;
////    vert.x = ??? something fun of your own design
////    vert.y = ??? something fun of your own design
////    vert.z = ??? something fun of your own design
////    gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
////}
//
//#version 130
//
//out vec2 vST; // texture coords
//out vec3 vN; // normal vector
//out vec3 vL; // vector from point to light
//out vec3 vE; // vector from point to eye
//
//uniform vec3 point;
//uniform float maxdist;
//
//flat out int inbounds;
//flat out int stripe;
//
//vec3 LightPosition = vec3( 5., 5., 0. );
//
//void
//main( )
//{
//    vST = gl_MultiTexCoord0.st;
//    vec4 ECposition = gl_ModelViewMatrix * gl_Vertex;
//    vN = normalize( gl_NormalMatrix * gl_Normal ); // normal vector
//    vL = LightPosition - ECposition.xyz; // vector from the point
//    // to the light position
//    vE = vec3( 0., 0., 0. ) - ECposition.xyz; // vector from the point
//    // to the eye position
//    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
//    
//    float dist = distance(gl_Position.xyz, point);
//    if( dist <= maxdist )
//    {
//        inbounds = 1;
//    }else{
//        inbounds = 0;
//    }
//    
//    int stripecalc = int(round(gl_Position.x * 10));
//    if( stripecalc % 2 == 0)
//    {
//        stripe = 1;
//    }else{
//        stripe = 0;
//    }
//}

void main()
{
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}
