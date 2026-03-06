// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Denoise preprocessing configuration. **Note:** This configuration is not supported.
class DenoiseResponse {
  /// Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother the image. 0 is no denoising. The default is 0.
  final pulumi.Input<double> strength;
  /// Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain`
  final pulumi.Input<String> tune;

  /// Creates a new [DenoiseResponse].
  /// [strength] Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother the image. 0 is no denoising. The default is 0.
  /// [tune] Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain`
  const DenoiseResponse({
    required this.strength,
    required this.tune,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'strength': strength,
      'tune': tune,
    };
  }

  factory DenoiseResponse.fromMap(Map<String, dynamic> map) {
    return DenoiseResponse(
      strength: pulumi.Input.fromValue(map['strength'] as double),
      tune: pulumi.Input.fromValue(map['tune'] as String),
    );
  }
}

