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
  const GoogleCloudMlV1TrialParameter({
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
      floatValue: (() { final guardedValue = map['floatValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      intValue: (() { final guardedValue = map['intValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

