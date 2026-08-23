// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a color in the RGB color space.
class GooglePrivacyDlpV2ColorResponse {
  /// The amount of blue in the color as a value in the interval [0, 1].
  final pulumi.Input<double> blue;
  /// The amount of green in the color as a value in the interval [0, 1].
  final pulumi.Input<double> green;
  /// The amount of red in the color as a value in the interval [0, 1].
  final pulumi.Input<double> red;

  /// Creates a new [GooglePrivacyDlpV2ColorResponse].
  /// [blue] The amount of blue in the color as a value in the interval [0, 1].
  /// [green] The amount of green in the color as a value in the interval [0, 1].
  /// [red] The amount of red in the color as a value in the interval [0, 1].
  const GooglePrivacyDlpV2ColorResponse({
    required this.blue,
    required this.green,
    required this.red,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blue': blue,
      'green': green,
      'red': red,
    };
  }

  factory GooglePrivacyDlpV2ColorResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ColorResponse(
      blue: pulumi.Input.fromValue(map['blue'] as double),
      green: pulumi.Input.fromValue(map['green'] as double),
      red: pulumi.Input.fromValue(map['red'] as double),
    );
  }
}
