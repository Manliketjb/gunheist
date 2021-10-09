QBCore = exports['qb-core']:GetCoreObject()

local hackingPosition = vector3(1268.46, -1710.03, 54.77)

local pickupLocations = {
	vector3(1163.254, -3047.666, 5.902),
	vector3(1163.345, -3045.26, 5.901),
	vector3(1163.298, -3042.596, 5.902),
	vector3(1163.37, -3039.913, 5.902),
	vector3(1163.308, -3037.396, 5.902),
	vector3(1163.41, -3031.935, 5.901),
	vector3(1163.511, -3029.021, 5.901),
	vector3(1163.44, -3026.372, 5.901),
	vector3(1163.444, -3023.829, 5.901),
	vector3(1163.448, -3021.177, 5.902),
	vector3(1163.505, -2995.243, 5.902),
	vector3(1163.43, -2992.714, 5.902),
	vector3(1163.454, -2989.864, 5.902),
	vector3(1163.445, -2987.291, 5.902),
	vector3(1163.514, -2984.798, 5.902),
	vector3(1163.436, -2979.179, 5.902),
	vector3(1163.482, -2976.94, 5.902),
	vector3(1163.551, -2973.94, 5.902),
	vector3(1163.534, -2971.222, 5.902),
	vector3(1163.447, -2968.739, 5.902),
	vector3(1149.391, -2967.761, 5.901),
	vector3(1149.495, -2970.393, 5.901),
	vector3(1149.371, -2973.192, 5.901),
	vector3(1149.309, -2976.043, 5.901),
	vector3(1149.38, -2978.591, 5.901),
	vector3(1149.525, -2981.245, 5.901),
	vector3(1149.453, -2984.149, 5.901),
	vector3(1149.402, -2986.72, 5.901),
	vector3(1149.485, -2989.25, 5.901),
	vector3(1149.34, -2992.073, 5.901),
	vector3(1149.37, -2994.716, 5.901),
	vector3(1149.44, -3020.688, 5.901),
	vector3(1149.492, -3023.171, 5.901),
	vector3(1149.443, -3025.926, 5.901),
	vector3(1149.45, -3028.656, 5.901),
	vector3(1149.43, -3031.38, 5.901),
	vector3(1149.428, -3033.726, 5.901),
	vector3(1149.229, -3036.569, 5.901),
	vector3(1149.394, -3039.232, 5.901),
	vector3(1149.307, -3042.044, 5.901),
	vector3(1149.326, -3044.388, 5.901),
	vector3(1149.3, -3047.181, 5.901),
	vector3(1135.541, -3047.84, 5.901),
	vector3(1135.367, -3045.236, 5.901),
	vector3(1135.502, -3042.605, 5.901),
	vector3(1135.435, -3040.016, 5.901),
	vector3(1135.502, -3037.039, 5.901),
	vector3(1135.562, -3034.593, 5.901),
	vector3(1135.474, -3031.854, 5.901),
	vector3(1135.509, -3029.22, 5.901),
	vector3(1135.501, -3026.36, 5.901),
	vector3(1135.513, -3023.808, 5.901),
	vector3(1135.5, -3021.175, 5.901),
	vector3(1135.462, -2995.335, 5.901),
	vector3(1135.505, -2992.702, 5.901),
	vector3(1135.477, -2989.938, 5.901),
	vector3(1135.546, -2987.151, 5.901),
	vector3(1135.583, -2984.812, 5.901),
	vector3(1135.426, -2981.78, 5.901),
	vector3(1135.417, -2979.246, 5.901),
	vector3(1135.468, -2976.563, 5.901),
	vector3(1135.503, -2973.745, 5.901),
	vector3(1135.547, -2971.238, 5.901),
	vector3(1135.48, -2968.587, 5.901),
	vector3(1121.429, -2968.014, 5.901),
	vector3(1121.46, -2970.478, 5.901),
	vector3(1121.341, -2973.24, 5.901),
	vector3(1121.408, -2975.947, 5.901),
	vector3(1121.464, -2978.617, 5.901),
	vector3(1121.424, -2981.359, 5.901),
	vector3(1121.452, -2984.025, 5.901),
	vector3(1121.408, -2986.588, 5.901),
	vector3(1121.433, -2989.302, 5.901),
	vector3(1121.47, -2992.218, 5.901),
	vector3(1121.426, -2994.673, 5.901),
	vector3(1121.424, -3020.962, 5.901),
	vector3(1121.451, -3023.174, 5.901),
	vector3(1121.379, -3026.101, 5.901),
	vector3(1121.388, -3028.463, 5.901),
	vector3(1121.379, -3031.238, 5.901),
	vector3(1121.482, -3034.06, 5.901),
	vector3(1121.478, -3036.656, 5.901),
	vector3(1121.421, -3039.389, 5.901),
	vector3(1121.387, -3042.012, 5.901),
	vector3(1121.34, -3044.673, 5.901),
	vector3(1121.305, -3048.012, 5.901),
	vector3(1107.27, -3047.813, 5.901),
	vector3(1107.296, -3045.379, 5.901),
	vector3(1107.223, -3042.757, 5.901),
	vector3(1107.229, -3040.073, 5.901),
	vector3(1107.324, -3037.454, 5.901),
	vector3(1107.361, -3034.564, 5.901),
	vector3(1107.404, -3031.827, 5.901),
	vector3(1107.424, -3029.11, 5.901),
	vector3(1107.445, -3026.573, 5.901),
	vector3(1107.474, -3024.111, 5.901),
	vector3(1107.505, -3021.171, 5.901),
	vector3(1107.477, -2995.043, 5.901),
	vector3(1107.44, -2992.445, 5.901),
	vector3(1107.459, -2990.106, 5.901),
	vector3(1107.408, -2987.562, 5.901),
	vector3(1107.532, -2984.58, 5.901),
	vector3(1107.542, -2981.94, 5.901),
	vector3(1107.604, -2979.201, 5.901),
	vector3(1107.644, -2976.297, 5.901),
	vector3(1107.628, -2973.63, 5.901),
	vector3(1107.661, -2970.936, 5.901),
	vector3(1107.693, -2968.612, 5.901),
	vector3(1098.725, -2981.711, 5.901),
	vector3(1113.396, -2981.905, 5.901),
	vector3(1127.505, -2981.676, 5.901),
	vector3(1127.422, -2981.501, 6.001),
	vector3(1142.273, -2981.396, 6.001),
	vector3(1155.999, -2981.536, 6.001),
	vector3(1158.476, -3034.257, 6.301),
	vector3(1143.884, -3034.151, 6.301),
	vector3(1129.662, -3034.183, 6.301),
	vector3(1114.945, -3034.19, 6.3),
	vector3(1100.691, -3034.185, 6.301),
	vector3(1048.43, -3101.834, 5.895),
	vector3(1048.437, -3099.129, 5.901),
	vector3(1048.455, -3096.736, 5.901),
	vector3(1048.473, -3093.699, 5.901),
	vector3(1048.48, -3091.257, 5.901),
	vector3(1048.467, -3088.194, 5.901),
	vector3(1048.436, -3085.79, 5.901),
	vector3(1048.475, -3082.941, 5.901),
	vector3(1048.456, -3079.9, 5.901),
	vector3(1048.456, -3077.515, 5.901),
	vector3(1048.449, -3074.858, 5.901),
	vector3(1048.498, -3047.659, 5.901),
	vector3(1048.383, -3045.028, 5.901),
	vector3(1048.357, -3042.516, 5.901),
	vector3(1048.365, -3039.936, 5.901),
	vector3(1048.365, -3037.229, 5.901),
	vector3(1048.366, -3031.554, 5.901),
	vector3(1048.397, -3029.321, 5.901),
	vector3(1048.361, -3026.231, 5.901),
	vector3(1048.366, -3023.561, 5.901),
	vector3(1048.336, -3021.265, 5.901),
	vector3(1048.09, -2995.261, 5.901),
	vector3(1048.131, -2992.785, 5.901),
	vector3(1048.244, -2990.12, 5.901),
	vector3(1048.234, -2987.661, 5.901),
	vector3(1048.196, -2985.144, 5.901),
	vector3(1048.412, -2982.003, 5.901),
	vector3(1048.46, -2979.333, 5.901),
	vector3(1048.475, -2976.752, 5.901),
	vector3(1048.424, -2974.079, 5.901),
	vector3(1048.498, -2971.199, 5.901),
	vector3(1048.486, -2968.936, 5.901),
	vector3(1034.467, -2968.444, 5.901),
	vector3(1034.41, -2970.817, 5.901),
	vector3(1034.37, -2973.537, 5.901),
	vector3(1034.419, -2975.961, 5.901),
	vector3(1034.38, -2978.825, 5.901),
	vector3(1034.403, -2981.601, 5.901),
	vector3(1034.343, -2984.386, 5.901),
	vector3(1034.33, -2987.08, 5.901),
	vector3(1034.299, -2989.74, 5.901),
	vector3(1034.236, -2992.477, 5.901),
	vector3(1034.213, -2995.099, 5.901),
	vector3(1034.241, -3020.585, 5.901),
	vector3(1034.171, -3023.405, 5.901),
	vector3(1034.231, -3026.115, 5.901),
	vector3(1034.264, -3028.685, 5.901),
	vector3(1034.277, -3031.328, 5.901),
	vector3(1034.27, -3034.051, 5.901),
	vector3(1034.313, -3036.823, 5.901),
	vector3(1034.257, -3039.355, 5.901),
	vector3(1034.273, -3042.282, 5.901),
	vector3(1034.321, -3044.744, 5.901),
	vector3(1034.326, -3047.763, 5.901),
	vector3(1034.515, -3074.64, 5.901),
	vector3(1034.548, -3077.303, 5.901),
	vector3(1034.538, -3079.749, 5.901),
	vector3(1034.45, -3082.481, 5.901),
	vector3(1034.544, -3084.982, 5.901),
	vector3(1034.442, -3088.021, 5.901),
	vector3(1034.568, -3090.541, 5.901),
	vector3(1034.592, -3093.187, 5.901),
	vector3(1034.535, -3095.911, 5.901),
	vector3(1034.495, -3098.619, 5.901),
	vector3(1034.441, -3101.384, 5.901),
	vector3(1020.525, -3101.868, 5.901),
	vector3(1020.54, -3098.923, 5.901),
	vector3(1020.589, -3096.344, 5.901),
	vector3(1020.51, -3093.52, 5.901),
	vector3(1020.547, -3090.959, 5.901),
	vector3(1020.601, -3088.18, 5.901),
	vector3(1020.489, -3085.584, 5.901),
	vector3(1020.484, -3082.967, 5.901),
	vector3(1020.538, -3080.207, 5.901),
	vector3(1020.53, -3077.523, 5.901),
	vector3(1020.544, -3074.788, 5.901),
	vector3(1020.419, -3047.872, 5.901),
	vector3(1020.344, -3045.17, 5.901),
	vector3(1020.427, -3042.51, 5.901),
	vector3(1020.466, -3039.935, 5.901),
	vector3(1020.484, -3037.321, 5.901),
	vector3(1020.456, -3034.422, 5.901),
	vector3(1020.349, -3031.327, 5.901),
	vector3(1020.254, -3029.02, 5.901),
	vector3(1020.275, -3026.63, 5.901),
	vector3(1020.32, -3023.595, 5.901),
	vector3(1020.354, -3021.302, 5.901),
	vector3(1020.559, -2995.311, 5.901),
	vector3(1020.5, -2992.573, 5.901),
	vector3(1020.415, -2989.846, 5.901),
	vector3(1020.536, -2987.362, 5.901),
	vector3(1020.46, -2984.776, 5.901),
	vector3(1020.51, -2981.965, 5.901),
	vector3(1020.462, -2979.228, 5.901),
	vector3(1020.562, -2976.509, 5.901),
	vector3(1020.402, -2973.988, 5.901),
	vector3(1020.488, -2971.229, 5.901),
	vector3(1020.431, -2968.696, 5.901),
	vector3(1006.361, -2968.346, 5.901),
	vector3(1006.462, -2970.953, 5.901),
	vector3(1006.389, -2973.603, 5.901),
	vector3(1006.49, -2976.212, 5.901),
	vector3(1006.439, -2978.76, 5.901),
	vector3(1006.378, -2981.694, 5.901),
	vector3(1006.398, -2984.248, 5.901),
	vector3(1006.49, -2986.782, 5.901),
	vector3(1006.367, -2989.526, 5.901),
	vector3(1006.346, -2992.298, 5.901),
	vector3(1006.46, -2994.817, 5.901),
	vector3(1006.213, -3020.739, 5.901),
	vector3(1006.239, -3023.394, 5.901),
	vector3(1006.172, -3025.992, 5.901),
	vector3(1006.252, -3028.679, 5.901),
	vector3(1006.222, -3031.376, 5.901),
	vector3(1006.242, -3034.032, 5.901),
	vector3(1006.304, -3036.792, 5.901),
	vector3(1006.458, -3039.712, 5.901),
	vector3(1006.385, -3042.388, 5.901),
	vector3(1006.427, -3044.332, 5.901),
	vector3(1006.381, -3047.108, 5.901),
	vector3(1006.369, -3074.447, 5.901),
	vector3(1006.47, -3077.068, 5.901),
	vector3(1006.428, -3079.56, 5.901),
	vector3(1006.302, -3082.306, 5.901),
	vector3(1006.337, -3084.52, 5.901),
	vector3(1014.567, -3088.137, 5.901),
	vector3(1025.505, -3088.221, 5.901),
	vector3(1039.783, -3088.13, 5.901),
	vector3(1053.886, -3087.883, 5.901),
	vector3(1041.246, -3034.287, 6.001),
	vector3(1028.352, -3034.341, 5.901),
	vector3(1014.789, -3034.07, 5.901),
	vector3(1002.685, -3034.392, 5.901),
	vector3(998.149, -2981.763, 5.901),
	vector3(1011.453, -2981.717, 5.901),
	vector3(1025.099, -2981.896, 5.901),
	vector3(1042.353, -2981.99, 5.901),
	vector3(1052.768, -2981.95, 5.901),
	vector3(952.029, -2968.148, 5.901),
	vector3(951.865, -2970.673, 5.901),
	vector3(952.01, -2973.278, 5.901),
	vector3(951.976, -2975.878, 5.901),
	vector3(951.915, -2978.646, 5.901),
	vector3(951.93, -2984.52, 5.901),
	vector3(951.942, -2986.763, 5.901),
	vector3(951.904, -2989.346, 5.901),
	vector3(951.891, -2992.183, 5.901),
	vector3(951.885, -2994.699, 5.901),
	vector3(951.948, -3020.767, 5.902),
	vector3(951.93, -3023.002, 5.902),
	vector3(951.894, -3025.729, 5.902),
	vector3(951.911, -3028.469, 5.902),
	vector3(951.898, -3031.16, 5.902),
	vector3(951.821, -3033.901, 5.902),
	vector3(951.804, -3036.662, 5.902),
	vector3(951.745, -3039.192, 5.902),
	vector3(951.728, -3042.04, 5.902),
	vector3(951.666, -3044.665, 5.902),
	vector3(951.724, -3047.319, 5.902),
	vector3(951.918, -3074.593, 5.901),
	vector3(951.92, -3077.016, 5.901),
	vector3(951.915, -3079.627, 5.901),
	vector3(951.909, -3082.433, 5.901),
	vector3(951.941, -3084.843, 5.901),
	vector3(951.886, -3087.539, 5.901),
	vector3(951.939, -3090.332, 5.901),
	vector3(951.905, -3093.142, 5.901),
	vector3(951.96, -3095.875, 5.901),
	vector3(951.97, -3098.599, 5.901),
	vector3(951.947, -3101.3, 5.901),
	vector3(937.838, -3101.356, 5.901),
	vector3(937.876, -3098.893, 5.901),
	vector3(937.886, -3096.11, 5.901),
	vector3(937.957, -3093.664, 5.901),
	vector3(937.934, -3091.342, 5.901),
	vector3(937.964, -3088.338, 5.901),
	vector3(937.902, -3085.622, 5.901),
	vector3(937.929, -3082.922, 5.901),
	vector3(937.989, -3079.93, 5.901),
	vector3(937.938, -3077.916, 5.901),
	vector3(937.932, -3075.16, 5.901),
	vector3(937.973, -3047.698, 5.902),
	vector3(937.887, -3045.682, 5.902),
	vector3(937.848, -3042.935, 5.902),
	vector3(937.934, -3040.017, 5.902),
	vector3(937.859, -3037.365, 5.902),
	vector3(937.964, -3034.346, 5.902),
	vector3(937.995, -3031.906, 5.902),
	vector3(937.944, -3029.146, 5.902),
	vector3(937.991, -3026.448, 5.902),
	vector3(937.933, -3023.713, 5.902),
	vector3(937.932, -3021.021, 5.902),
	vector3(937.813, -2995.28, 5.901),
	vector3(937.85, -2992.942, 5.901),
	vector3(937.792, -2990.129, 5.901),
	vector3(937.816, -2987.553, 5.901),
	vector3(937.789, -2984.76, 5.901),
	vector3(937.987, -2982.442, 5.901),
	vector3(937.892, -2979.448, 5.901),
	vector3(937.919, -2976.539, 5.901),
	vector3(937.982, -2973.795, 5.901),
	vector3(937.904, -2971.31, 5.901),
	vector3(937.977, -2968.612, 5.901),
	vector3(924.083, -2968.619, 5.901),
	vector3(924.004, -2970.782, 5.901),
	vector3(923.964, -2973.437, 5.901),
	vector3(923.898, -2976.307, 5.901),
	vector3(923.89, -2978.749, 5.901),
	vector3(923.883, -2981.723, 5.901),
	vector3(923.856, -2984.27, 5.901),
	vector3(923.939, -2986.99, 5.901),
	vector3(923.837, -2989.758, 5.901),
	vector3(923.854, -2992.693, 5.901),
	vector3(923.873, -2995.343, 5.901),
	vector3(923.926, -3021.119, 5.902),
	vector3(923.901, -3023.251, 5.902),
	vector3(923.953, -3025.819, 5.902),
	vector3(923.908, -3028.661, 5.902),
	vector3(923.935, -3031.259, 5.902),
	vector3(923.914, -3034.027, 5.902),
	vector3(923.931, -3036.786, 5.902),
	vector3(923.971, -3039.376, 5.902),
	vector3(923.945, -3042.188, 5.902),
	vector3(923.898, -3045.119, 5.902),
	vector3(923.858, -3047.393, 5.902),
	vector3(923.977, -3074.572, 5.901),
	vector3(923.982, -3077.082, 5.901),
	vector3(923.938, -3079.672, 5.901),
	vector3(923.981, -3082.283, 5.901),
	vector3(923.947, -3085.064, 5.901),
	vector3(923.885, -3087.804, 5.901),
	vector3(923.854, -3090.441, 5.901),
	vector3(923.821, -3093.015, 5.901),
	vector3(924.043, -3095.772, 5.901),
	vector3(923.975, -3098.597, 5.901),
	vector3(923.952, -3100.968, 5.901),
	vector3(909.977, -3101.333, 5.901),
	vector3(909.954, -3098.791, 5.901),
	vector3(910.029, -3096.124, 5.901),
	vector3(909.885, -3093.938, 5.901),
	vector3(910.004, -3091.175, 5.901),
	vector3(909.858, -3088.535, 5.901),
	vector3(909.918, -3085.661, 5.901),
	vector3(909.957, -3082.989, 5.901),
	vector3(909.981, -3080.083, 5.901),
	vector3(909.896, -3077.195, 5.901),
	vector3(909.923, -3074.905, 5.901),
	vector3(909.778, -3047.663, 5.902),
	vector3(909.862, -3045.164, 5.902),
	vector3(909.901, -3042.391, 5.902),
	vector3(909.918, -3039.747, 5.902),
	vector3(909.927, -3037.392, 5.902),
	vector3(910.005, -3034.333, 5.902),
	vector3(909.899, -3031.833, 5.902),
	vector3(909.959, -3029.183, 5.902),
	vector3(909.971, -3026.635, 5.902),
	vector3(909.852, -3023.889, 5.902),
	vector3(909.976, -3020.953, 5.902),
	vector3(909.901, -2995.388, 5.901),
	vector3(909.998, -2992.897, 5.901),
	vector3(909.963, -2990.226, 5.901),
	vector3(909.829, -2987.426, 5.901),
	vector3(909.934, -2984.903, 5.901),
	vector3(909.938, -2982.284, 5.901),
	vector3(909.965, -2979.251, 5.901),
	vector3(909.908, -2976.642, 5.901),
	vector3(909.956, -2973.734, 5.901),
	vector3(910.004, -2971.194, 5.901),
	vector3(910.058, -2968.394, 5.901),
	vector3(900.706, -2981.721, 5.901),
	vector3(914.534, -2981.802, 5.901),
	vector3(929.831, -2982.065, 5.901),
	vector3(943.816, -2981.991, 5.901),
	vector3(960.405, -3034.498, 5.902),
	vector3(948.827, -3034.239, 5.902),
	vector3(901.6, -3034.182, 5.902),
	vector3(914.7, -3034.321, 5.902),
	vector3(960.23, -3088.299, 5.901),
	vector3(947.339, -3088.176, 5.905),
	vector3(934.516, -3087.993, 5.901),
	vector3(918.687, -3087.889, 5.901),
	vector3(904.352, -3087.934, 5.901),
	vector3(867.099, -3088.196, 5.901),
	vector3(853.93, -3088.091, 5.901),
	vector3(835.477, -3087.878, 5.901),
	vector3(825.67, -3087.718, 5.901),
	vector3(830.674, -3076.757, 5.901),
	vector3(830.716, -3080.314, 5.901),
	vector3(830.654, -3082.24, 5.901),
	vector3(830.547, -3084.975, 5.901),
	vector3(830.438, -3091.546, 5.901),
	vector3(830.656, -3096.911, 5.901),
	vector3(830.604, -3099.932, 5.901),
	vector3(844.576, -3101.183, 5.901),
	vector3(844.65, -3099.231, 5.901),
	vector3(844.713, -3096.384, 5.901)
}

local activeDrops = {}

RegisterNetEvent('qb-gunheist:manipulateDrop')
AddEventHandler('qb-gunheist:manipulateDrop', function(dropId, dropData)
	if not dropData then
		if activeDrops[dropId].blip and DoesBlipExist(activeDrops[dropId].blip) then
			RemoveBlip(activeDrops[dropId].blip)
		end

		if activeDrops[dropId].object then
			SetEntityAsMissionEntity(activeDrops[dropId].object, true, true)
			DeleteObject(activeDrops[dropId].object)
		end
	end

	activeDrops[dropId] = dropData
end)

RegisterNetEvent('qb-gunheist:obtainDrops')
AddEventHandler('qb-gunheist:obtainDrops', function(serverDrops)
	activeDrops = serverDrops
end)

RegisterNetEvent('qb-gunheist:createBlipOnDrop')
AddEventHandler('qb-gunheist:createBlipOnDrop', function(dropId)
	while not activeDrops[dropId] do
		Citizen.Wait(0)
	end

	local coords = pickupLocations[activeDrops[dropId].pickupLocation]

	activeDrops[dropId].blip = AddBlipForCoord(coords)

	SetBlipSprite(activeDrops[dropId].blip, 478)
	SetBlipScale(activeDrops[dropId].blip, 0.9)
	SetBlipColour(activeDrops[dropId].blip, 4)
	SetBlipDisplay(activeDrops[dropId].blip, 4)
	SetBlipAsShortRange(activeDrops[dropId].blip, false)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString('Weapon Crate')
	EndTextCommandSetBlipName(activeDrops[dropId].blip)

	SetNewWaypoint(coords.x, coords.y)
end)

function ScanActiveDrops()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local id

	for dropId, dropData in pairs(activeDrops) do
		local dstcheck = #(coords - pickupLocations[dropData.pickupLocation])

		if dstcheck < closest then
			closest = dstcheck
			id = dropId
		end
	end

	return closest, id
end

function DrawText3Ds(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)

	if onScreen then
		SetTextScale(0.35, 0.35)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
		local factor = (string.len(text)) / 370
		DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
	end
end

local inAnimation = false

RegisterNetEvent('qb-gunheist:openCrate')
AddEventHandler('qb-gunheist:openCrate', function(crateObject)
	LoadAnimDict("amb@medic@standing@tendtodead@enter")
	LoadAnimDict("amb@medic@standing@tendtodead@idle_a")

	local ped = PlayerPedId()

	TaskTurnPedToFaceEntity(ped, crateObject, 1000)
	Citizen.Wait(1000)
	TaskPlayAnim(ped, "amb@medic@standing@tendtodead@enter", "enter", 1.0, 1.0, -1, 8, -1, 0, 0, 0)
	Citizen.Wait(800)
	TaskPlayAnim(ped, "amb@medic@standing@tendtodead@idle_a", "idle_a", 1.0, 1.0, -1, 9, -1, 0, 0, 0)

	while inAnimation do
		Citizen.Wait(1)

		DisableControlAction(0, 161)
		DisableControlAction(0, 311)

		if not IsEntityPlayingAnim(ped, 'amb@medic@standing@tendtodead@idle_a', 'idle_a', 3) then
			TaskPlayAnim(ped, 'amb@medic@standing@tendtodead@idle_a', 'idle_a', 1.0, 1.0, -1, 9, -1, 0, 0, 0)
		end
	end

	ClearPedTasks(PlayerPedId())

	RemoveAnimDict("amb@medic@standing@tendtodead@enter")
	RemoveAnimDict("amb@medic@standing@tendtodead@idle_a")
end)

Citizen.CreateThread(function()
	TriggerServerEvent('qb-gunheist:obtainDrops')

	while true do
		local dropDistance, dropId = ScanActiveDrops()

		if dropDistance < 2.5 then
			local coords = pickupLocations[activeDrops[dropId].pickupLocation]

			if dropDistance < 1.5 then
				DrawText3Ds(coords.x, coords.y, coords.z, "[E] Drill Crate")

				if IsControlJustReleased(0, 38) then
					TriggerServerEvent('checkDrill', dropId)
				end
			else
				DrawText3Ds(coords.x, coords.y, coords.z, "Drill Crate")
			end
		else
			Citizen.Wait(math.ceil(dropDistance * 20))
		end

		Citizen.Wait(0)
	end
end)


RegisterNetEvent('do')
AddEventHandler('do', function(dropId)
	inAnimation = true

	TriggerEvent('qb-gunheist:openCrate', activeDrops[dropId].object)
	
	QBCore.Functions.Progressbar("drilling_", "Drilling...", math.random(20000, 30000), false, true, {}, {}, {}, {}, function()
		TriggerServerEvent('qb-gunheist:pickUpDrop', dropId)
		inAnimation = false
	end)
end) 


function LoadModel(model)
	if not HasModelLoaded(model) then
		RequestModel(model)

		while not HasModelLoaded(model) do
			Citizen.Wait(1)
		end
	end
end

AddEventHandler("onResourceStop", function(resource)
	if resource == GetCurrentResourceName() then
		for dropId, dropData in pairs(activeDrops) do
			if dropData.object and DoesEntityExist(dropData.object) then
				SetEntityAsMissionEntity(dropData.object, true, true)
				DeleteObject(dropData.object)
			end
		end
	end
end)

RegisterNetEvent('clearTasks')
AddEventHandler('clearTasks', function() 
	ClearPedTasks(PlayerPedId())
end)

Citizen.CreateThread(function()
	local modelHash = GetHashKey("gr_prop_gr_rsply_crate04a")

	while true do
		local coords = GetEntityCoords(PlayerPedId())

		for dropId, dropData in pairs(activeDrops) do
			local dstcheck = #(coords - pickupLocations[dropData.pickupLocation])

			if dstcheck < 100 and not dropData.object then
				LoadModel(modelHash)
				local coords = pickupLocations[activeDrops[dropId].pickupLocation]
				activeDrops[dropId].object = CreateObject(modelHash, coords.x, coords.y, coords.z - 1.0, false, false, false)
				SetModelAsNoLongerNeeded(modelHash)

				FreezeEntityPosition(activeDrops[dropId].object, true)
			elseif dstcheck > 100 and dropData.object then
				if DoesEntityExist(dropData.object) then
					SetEntityAsMissionEntity(dropData.object, true, true)
					DeleteObject(dropData.object)
				end

				activeDrops[dropId].object = nil
			end
		end

		Citizen.Wait(1000)
	end
end)

RegisterNetEvent('qb-gunheist:useChip')

AddEventHandler('qb-gunheist:useChip', function()
	local dstcheck = #(GetEntityCoords(PlayerPedId()) - hackingPosition)

	if dstcheck < 5 then
		if StartHacking() then
			TriggerServerEvent('qb-gunheist:wonHacking')
		end
	end
end)



function LoadAnimDict(dict)
	if not HasAnimDictLoaded(dict) then
		RequestAnimDict(dict)

		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(1)
		end
	end
end


RegisterNetEvent('qb-gunheist:doDecryptionAnimation')
AddEventHandler('qb-gunheist:doDecryptionAnimation', function()
	local ped = PlayerPedId()
	RequestAnimDict('missheist_jewel@hacking')
	TaskPlayAnim(ped, "missheist_jewel@hacking", "hack_loop", 8.0, 1.0, -1, 9, 0, 0, 0, 0)
end)

RegisterNetEvent('qb-gunheist:useDecryptionKey')
AddEventHandler('qb-gunheist:useDecryptionKey', function(item)
	local dstcheck = #(GetEntityCoords(PlayerPedId()) - hackingPosition)
	if dstcheck < 5 then
		TriggerEvent('qb-gunheist:doDecryptionAnimation')


		QBCore.Functions.Progressbar("drilling_", "Decrypting with key...", math.random(10000, 15000), false, true, {}, {}, {}, {}, function()
			ClearPedTasks(PlayerPedId())
			RemoveAnimDict("missheist_jewel@hacking")
			TriggerServerEvent('qb-gunheist:server:useDecryptionKey', item)
		end)
	end
end)

function hackingCompleted(success, timeremaining)
	if success then	
		TriggerServerEvent('qb-gunheist:hackingCompleted')
	end

	TriggerEvent('mhacking:hide')
end

RegisterNetEvent('qb-gunheist:hackingMinigame')
AddEventHandler('qb-gunheist:hackingMinigame', function()
	TriggerEvent("mhacking:show")
	TriggerEvent("mhacking:start", 7, 35, hackingCompleted)
end)

