// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse {
  /// Must be specified if type is `INTEGER`. Maximum value of the parameter.
  final pulumi.Input<String> maxValue;
  /// Must be specified if type is `INTEGER`. Minimum value of the parameter.
  final pulumi.Input<String> minValue;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse].
  /// [maxValue] Must be specified if type is `INTEGER`. Maximum value of the parameter.
  /// [minValue] Must be specified if type is `INTEGER`. Minimum value of the parameter.
  const GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
    );
  }
}

