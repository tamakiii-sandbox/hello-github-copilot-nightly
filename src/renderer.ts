// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// No Node.js APIs are available in this process unless
// nodeIntegration is set to true in webPreferences.
// Use preload.js to selectively enable features
// needed in the renderer process.

// import * as THREE from 'three';

// // let scene: THREE.Scene, camera: THREE.Camera, renderer: THREE.WebGLRenderer;
// let scene: THREE.Scene, camera: THREE.PerspectiveCamera, renderer: THREE.WebGLRenderer;

// function init() {
//     scene = new THREE.Scene();
//     camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
//     renderer = new THREE.WebGLRenderer({ alpha: true }); // alpha for transparent background

//     renderer.setSize(window.innerWidth, window.innerHeight);
//     document.body.appendChild(renderer.domElement);

//     // update the camera and renderer size when the window is resized
//     window.addEventListener('resize', function () {
//         let width = window.innerWidth;
//         let height = window.innerHeight;
//         renderer.setSize(width, height);
//         camera.aspect = width / height;
//         camera.updateProjectionMatrix();
//     });

//     // a simple geometry for demonstration
//     const geometry = new THREE.TorusKnotGeometry(10, 3, 100, 16);
//     const material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });
//     const torusKnot = new THREE.Mesh(geometry, material);
//     scene.add(torusKnot);

//     camera.position.z = 50;
// }

// // create a loop that updates the object and render the scene on each animation frame
// function animate() {
//     requestAnimationFrame(animate);
//     renderer.render(scene, camera);
// }

// init();
// animate();
