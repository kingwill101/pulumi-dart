// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Video cropping configuration for the input video. The cropped input video is scaled to match the output resolution.
class Crop {
  /// The number of pixels to crop from the bottom. The default is 0.
  final pulumi.Input<int>? bottomPixels;
  /// The number of pixels to crop from the left. The default is 0.
  final pulumi.Input<int>? leftPixels;
  /// The number of pixels to crop from the right. The default is 0.
  final pulumi.Input<int>? rightPixels;
  /// The number of pixels to crop from the top. The default is 0.
  final pulumi.Input<int>? topPixels;

  /// Creates a new [Crop].
  /// [bottomPixels] The number of pixels to crop from the bottom. The default is 0.
  /// [leftPixels] The number of pixels to crop from the left. The default is 0.
  /// [rightPixels] The number of pixels to crop from the right. The default is 0.
  /// [topPixels] The number of pixels to crop from the top. The default is 0.
  Crop({
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

  factory Crop.fromMap(Map<String, dynamic> map) {
    return Crop(
      bottomPixels: map['bottomPixels'] == null ? null : (map['bottomPixels']! as int).input(),
      leftPixels: map['leftPixels'] == null ? null : (map['leftPixels']! as int).input(),
      rightPixels: map['rightPixels'] == null ? null : (map['rightPixels']! as int).input(),
      topPixels: map['topPixels'] == null ? null : (map['topPixels']! as int).input(),
    );
  }
}

