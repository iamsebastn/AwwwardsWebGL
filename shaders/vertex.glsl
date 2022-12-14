uniform float time;
uniform float uProgess;
uniform vec2 uResolution;
uniform vec2 uQuadSize;

varying vec2 vUv;
void main() {
    vUv = uv;
    vec4 defaultState = modelMatrix*vec4(position, 1.0);
    vec4 fullScreenState = vec4(position, 1.0);
    fullScreenState.x *= uResolution.x/uQuadSize.x;
    fullScreenState.y *= uResolution.y/uQuadSize.y;

    vec4 finalState = mix(defaultState, fullScreenState, uProgess);

    gl_Position = projectionMatrix * viewMatrix * fullScreenState;
}