// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor {
  /// The amount of blue in the color as a value in the interval [0, 1].
  final pulumi.Input<double>? blue;
  /// The amount of green in the color as a value in the interval [0, 1].
  final pulumi.Input<double>? green;
  /// The amount of red in the color as a value in the interval [0, 1].
  final pulumi.Input<double>? red;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor].
  /// [blue] The amount of blue in the color as a value in the interval [0, 1].
  /// [green] The amount of green in the color as a value in the interval [0, 1].
  /// [red] The amount of red in the color as a value in the interval [0, 1].
  const PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor({
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

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor(
      blue: (() { final guardedValue = map['blue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      green: (() { final guardedValue = map['green']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      red: (() { final guardedValue = map['red']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
