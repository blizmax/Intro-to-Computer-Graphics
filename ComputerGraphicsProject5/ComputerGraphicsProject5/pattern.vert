#version 120

uniform float uTime;
varying vec2 vST;
varying vec3 vColor;

void main()
{
    vST = gl_MultiTexCoord0.st;
    vec4 pos = gl_Vertex;
    vColor = pos.xyz;
    gl_Position = gl_ModelViewProjectionMatrix * (gl_Vertex + (.1*(.5+.5*sin(2.*3.14*uTime))));
}
