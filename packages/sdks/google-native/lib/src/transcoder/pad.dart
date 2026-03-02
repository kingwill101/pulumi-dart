// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pad filter configuration for the input video. The padded input video is scaled after padding with black to match the output resolution.
class Pad {
  /// The number of pixels to add to the bottom. The default is 0.
  final pulumi.Input<int>? bottomPixels;
  /// The number of pixels to add to the left. The default is 0.
  final pulumi.Input<int>? leftPixels;
  /// The number of pixels to add to the right. The default is 0.
  final pulumi.Input<int>? rightPixels;
  /// The number of pixels to add to the top. The default is 0.
  final pulumi.Input<int>? topPixels;

  /// Creates a new [Pad].
  /// [bottomPixels] The number of pixels to add to the bottom. The default is 0.
  /// [leftPixels] The number of pixels to add to the left. The default is 0.
  /// [rightPixels] The number of pixels to add to the right. The default is 0.
  /// [topPixels] The number of pixels to add to the top. The default is 0.
  Pad({
    this.bottomPixels,
    this.leftPixels,
    this.rightPixels,
    this.topPixels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bottomPixels': ?bottomPixels,
      'leftPixels': ?leftPixels,
      'rightPixels': ?rightPixels,
      'topPixels': ?topPixels,
    };
  }

  factory Pad.fromMap(Map<String, dynamic> map) {
    return Pad(
      bottomPixels: map['bottomPixels'] == null ? null : (map['bottomPixels'] as int).input(),
      leftPixels: map['leftPixels'] == null ? null : (map['leftPixels'] as int).input(),
      rightPixels: map['rightPixels'] == null ? null : (map['rightPixels'] as int).input(),
      topPixels: map['topPixels'] == null ? null : (map['topPixels'] as int).input(),
    );
  }
}

