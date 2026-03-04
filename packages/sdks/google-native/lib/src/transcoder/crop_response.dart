// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Video cropping configuration for the input video. The cropped input video is scaled to match the output resolution.
class CropResponse {
  /// The number of pixels to crop from the bottom. The default is 0.
  final pulumi.Input<int> bottomPixels;

  /// The number of pixels to crop from the left. The default is 0.
  final pulumi.Input<int> leftPixels;

  /// The number of pixels to crop from the right. The default is 0.
  final pulumi.Input<int> rightPixels;

  /// The number of pixels to crop from the top. The default is 0.
  final pulumi.Input<int> topPixels;

  /// Creates a new [CropResponse].
  /// [bottomPixels] The number of pixels to crop from the bottom. The default is 0.
  /// [leftPixels] The number of pixels to crop from the left. The default is 0.
  /// [rightPixels] The number of pixels to crop from the right. The default is 0.
  /// [topPixels] The number of pixels to crop from the top. The default is 0.
  CropResponse({
    required this.bottomPixels,
    required this.leftPixels,
    required this.rightPixels,
    required this.topPixels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bottomPixels': bottomPixels,
      'leftPixels': leftPixels,
      'rightPixels': rightPixels,
      'topPixels': topPixels,
    };
  }

  factory CropResponse.fromMap(Map<String, dynamic> map) {
    return CropResponse(
      bottomPixels: pulumi.Input.fromValue(map['bottomPixels'] as int),
      leftPixels: pulumi.Input.fromValue(map['leftPixels'] as int),
      rightPixels: pulumi.Input.fromValue(map['rightPixels'] as int),
      topPixels: pulumi.Input.fromValue(map['topPixels'] as int),
    );
  }
}
