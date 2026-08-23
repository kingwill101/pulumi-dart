// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the Test Base Account SKU Capability.
class TestBaseAccountSKUCapabilityResponse {
  /// An invariant to describe the feature, such as 'SLA'.
  final pulumi.Input<String> name;
  /// An invariant if the feature is measured by quantity, such as 99.9%.
  final pulumi.Input<String> value;

  /// Creates a new [TestBaseAccountSKUCapabilityResponse].
  /// [name] An invariant to describe the feature, such as 'SLA'.
  /// [value] An invariant if the feature is measured by quantity, such as 99.9%.
  const TestBaseAccountSKUCapabilityResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TestBaseAccountSKUCapabilityResponse.fromMap(Map<String, dynamic> map) {
    return TestBaseAccountSKUCapabilityResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
