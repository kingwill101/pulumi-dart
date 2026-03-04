// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec {
  /// Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  final pulumi.Input<double>? maxValue;

  /// Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  final pulumi.Input<double>? minValue;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec].
  /// [maxValue] Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  /// [minValue] Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec({
    this.maxValue,
    this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxValue': ?maxValue, 'minValue': ?minValue};
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec(
      maxValue: (() {
        final guardedValue = map['maxValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      minValue: (() {
        final guardedValue = map['minValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
