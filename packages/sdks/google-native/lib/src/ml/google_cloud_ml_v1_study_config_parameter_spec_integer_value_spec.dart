// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec {
  /// Must be specified if type is `INTEGER`. Maximum value of the parameter.
  final pulumi.Input<String>? maxValue;
  /// Must be specified if type is `INTEGER`. Minimum value of the parameter.
  final pulumi.Input<String>? minValue;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec].
  /// [maxValue] Must be specified if type is `INTEGER`. Maximum value of the parameter.
  /// [minValue] Must be specified if type is `INTEGER`. Minimum value of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec({
    this.maxValue,
    this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec(
      maxValue: map['maxValue'] == null ? null : (map['maxValue']! as String).input(),
      minValue: map['minValue'] == null ? null : (map['minValue']! as String).input(),
    );
  }
}

