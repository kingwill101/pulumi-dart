// ignore_for_file: unused_element, unnecessary_cast


/// Pad filter configuration for the input video. The padded input video is scaled after padding with black to match the output resolution.
class Pad {
  /// The number of pixels to add to the bottom. The default is 0.
  final int? bottomPixels;
  /// The number of pixels to add to the left. The default is 0.
  final int? leftPixels;
  /// The number of pixels to add to the right. The default is 0.
  final int? rightPixels;
  /// The number of pixels to add to the top. The default is 0.
  final int? topPixels;

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
      bottomPixels: map['bottomPixels'] == null ? null : map['bottomPixels'] as int,
      leftPixels: map['leftPixels'] == null ? null : map['leftPixels'] as int,
      rightPixels: map['rightPixels'] == null ? null : map['rightPixels'] as int,
      topPixels: map['topPixels'] == null ? null : map['topPixels'] as int,
    );
  }
}

