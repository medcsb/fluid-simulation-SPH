#version 450 core
layout (location = 0) in vec3 aPos;

uniform mat4 lightSpaceMatrix;
uniform mat4 transform;

void main() {
    gl_Position = lightSpaceMatrix * transform * vec4(aPos, 1.0);
}