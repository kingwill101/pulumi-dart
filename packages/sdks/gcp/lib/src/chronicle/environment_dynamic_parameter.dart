// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentDynamicParameter {
  /// The ID of the dynamic parameter.
  final pulumi.Input<int> dynamicParameterId;
  /// (Output)
  /// The ID of the environment.
  final pulumi.Input<int?>? environmentId;
  /// The value of the dynamic parameter.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentDynamicParameter].
  /// [dynamicParameterId] The ID of the dynamic parameter.
  /// [environmentId] (Output)
  /// [value] The value of the dynamic parameter.
  const EnvironmentDynamicParameter({
    required this.dynamicParameterId,
    this.environmentId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicParameterId': dynamicParameterId,
      'environmentId': ?environmentId,
      'value': value,
    };
  }

  factory EnvironmentDynamicParameter.fromMap(Map<String, dynamic> map) {
    return EnvironmentDynamicParameter(
      dynamicParameterId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['dynamicParameterId'])),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
