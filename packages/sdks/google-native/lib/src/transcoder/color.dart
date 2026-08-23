// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Color preprocessing configuration. **Note:** This configuration is not supported.
class Color {
  /// Control brightness of the video. Enter a value between -1 and 1, where -1 is minimum brightness and 1 is maximum brightness. 0 is no change. The default is 0.
  final pulumi.Input<double>? brightness;
  /// Control black and white contrast of the video. Enter a value between -1 and 1, where -1 is minimum contrast and 1 is maximum contrast. 0 is no change. The default is 0.
  final pulumi.Input<double>? contrast;
  /// Control color saturation of the video. Enter a value between -1 and 1, where -1 is fully desaturated and 1 is maximum saturation. 0 is no change. The default is 0.
  final pulumi.Input<double>? saturation;

  /// Creates a new [Color].
  /// [brightness] Control brightness of the video. Enter a value between -1 and 1, where -1 is minimum brightness and 1 is maximum brightness. 0 is no change. The default is 0.
  /// [contrast] Control black and white contrast of the video. Enter a value between -1 and 1, where -1 is minimum contrast and 1 is maximum contrast. 0 is no change. The default is 0.
  /// [saturation] Control color saturation of the video. Enter a value between -1 and 1, where -1 is fully desaturated and 1 is maximum saturation. 0 is no change. The default is 0.
  const Color({
    this.brightness,
    this.contrast,
    this.saturation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brightness': ?brightness,
      'contrast': ?contrast,
      'saturation': ?saturation,
    };
  }

  factory Color.fromMap(Map<String, dynamic> map) {
    return Color(
      brightness: (() { final guardedValue = map['brightness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      contrast: (() { final guardedValue = map['contrast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      saturation: (() { final guardedValue = map['saturation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
