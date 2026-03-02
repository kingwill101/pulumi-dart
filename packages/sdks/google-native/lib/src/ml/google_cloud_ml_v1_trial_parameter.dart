// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message representing a parameter to be tuned. Contains the name of the parameter and the suggested value to use for this trial.
class GoogleCloudMlV1TrialParameter {
  /// Must be set if ParameterType is DOUBLE or DISCRETE.
  final pulumi.Input<double>? floatValue;
  /// Must be set if ParameterType is INTEGER
  final pulumi.Input<String>? intValue;
  /// The name of the parameter.
  final pulumi.Input<String>? parameter;
  /// Must be set if ParameterTypeis CATEGORICAL
  final pulumi.Input<String>? stringValue;

  /// Creates a new [GoogleCloudMlV1TrialParameter].
  /// [floatValue] Must be set if ParameterType is DOUBLE or DISCRETE.
  /// [intValue] Must be set if ParameterType is INTEGER
  /// [parameter] The name of the parameter.
  /// [stringValue] Must be set if ParameterTypeis CATEGORICAL
  GoogleCloudMlV1TrialParameter({
    this.floatValue,
    this.intValue,
    this.parameter,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatValue': ?floatValue,
      'intValue': ?intValue,
      'parameter': ?parameter,
      'stringValue': ?stringValue,
    };
  }

  factory GoogleCloudMlV1TrialParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1TrialParameter(
      floatValue: map['floatValue'] == null ? null : (map['floatValue']! as double).input(),
      intValue: map['intValue'] == null ? null : (map['intValue']! as String).input(),
      parameter: map['parameter'] == null ? null : (map['parameter']! as String).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue']! as String).input(),
    );
  }
}

