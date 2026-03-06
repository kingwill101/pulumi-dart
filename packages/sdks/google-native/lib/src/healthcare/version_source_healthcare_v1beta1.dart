// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a selector for extracting and matching an MSH field to a value.
class VersionSourceHealthcareV1beta1 {
  /// The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  final pulumi.Input<String>? mshField;
  /// The value to match with the field. For example, "My Application Name" or "2.3".
  final pulumi.Input<String>? value;

  /// Creates a new [VersionSourceHealthcareV1beta1].
  /// [mshField] The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  /// [value] The value to match with the field. For example, "My Application Name" or "2.3".
  const VersionSourceHealthcareV1beta1({
    this.mshField,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mshField': ?mshField,
      'value': ?value,
    };
  }

  factory VersionSourceHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return VersionSourceHealthcareV1beta1(
      mshField: (() { final guardedValue = map['mshField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

