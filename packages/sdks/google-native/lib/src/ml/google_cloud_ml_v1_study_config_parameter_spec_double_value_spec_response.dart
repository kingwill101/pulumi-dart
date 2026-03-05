// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse {
  /// Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  final pulumi.Input<double> maxValue;
  /// Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  final pulumi.Input<double> minValue;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse].
  /// [maxValue] Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  /// [minValue] Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as double),
      minValue: pulumi.Input.fromValue(map['minValue'] as double),
    );
  }
}

