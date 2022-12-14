uniform float time;
uniform float uProgess;

varying vec2 vUv;

void main() {
    vUv = uv;
    vec4 defaultState = modelMatrix*vec4(position, 1.0);
    vec4 fullscreenState = vec4(position, 1.0);

    vec4 finalState = mix(defaultState, fullscreenState, uProgess);
    gl_Position = projectionMatrix * viewMatrix * finalState;
}