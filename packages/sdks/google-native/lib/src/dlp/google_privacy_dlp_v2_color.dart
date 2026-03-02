// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a color in the RGB color space.
class GooglePrivacyDlpV2Color {
  /// The amount of blue in the color as a value in the interval [0, 1].
  final pulumi.Input<double>? blue;
  /// The amount of green in the color as a value in the interval [0, 1].
  final pulumi.Input<double>? green;
  /// The amount of red in the color as a value in the interval [0, 1].
  final pulumi.Input<double>? red;

  /// Creates a new [GooglePrivacyDlpV2Color].
  /// [blue] The amount of blue in the color as a value in the interval [0, 1].
  /// [green] The amount of green in the color as a value in the interval [0, 1].
  /// [red] The amount of red in the color as a value in the interval [0, 1].
  GooglePrivacyDlpV2Color({
    this.blue,
    this.green,
    this.red,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blue': ?blue,
      'green': ?green,
      'red': ?red,
    };
  }

  factory GooglePrivacyDlpV2Color.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Color(
      blue: map['blue'] == null ? null : (map['blue'] as double).input(),
      green: map['green'] == null ? null : (map['green'] as double).input(),
      red: map['red'] == null ? null : (map['red'] as double).input(),
    );
  }
}

