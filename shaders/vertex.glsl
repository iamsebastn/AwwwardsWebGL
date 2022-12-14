void main() {
    gl_Position = projectionmatrix * modelViewMatrix * vec4( 
    position, 1.0)
}