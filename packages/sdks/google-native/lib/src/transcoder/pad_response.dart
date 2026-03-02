// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pad filter configuration for the input video. The padded input video is scaled after padding with black to match the output resolution.
class PadResponse {
  /// The number of pixels to add to the bottom. The default is 0.
  final pulumi.Input<int> bottomPixels;
  /// The number of pixels to add to the left. The default is 0.
  final pulumi.Input<int> leftPixels;
  /// The number of pixels to add to the right. The default is 0.
  final pulumi.Input<int> rightPixels;
  /// The number of pixels to add to the top. The default is 0.
  final pulumi.Input<int> topPixels;

  /// Creates a new [PadResponse].
  /// [bottomPixels] The number of pixels to add to the bottom. The default is 0.
  /// [leftPixels] The number of pixels to add to the left. The default is 0.
  /// [rightPixels] The number of pixels to add to the right. The default is 0.
  /// [topPixels] The number of pixels to add to the top. The default is 0.
  PadResponse({
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

  factory PadResponse.fromMap(Map<String, dynamic> map) {
    return PadResponse(
      bottomPixels: (map['bottomPixels'] as int).input(),
      leftPixels: (map['leftPixels'] as int).input(),
      rightPixels: (map['rightPixels'] as int).input(),
      topPixels: (map['topPixels'] as int).input(),
    );
  }
}

