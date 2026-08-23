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
  const GooglePrivacyDlpV2Color({
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
      blue: (() { final guardedValue = map['blue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      green: (() { final guardedValue = map['green']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      red: (() { final guardedValue = map['red']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
