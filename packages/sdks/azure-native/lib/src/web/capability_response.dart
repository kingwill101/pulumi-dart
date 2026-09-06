// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the capabilities/features allowed for a specific SKU.
class CapabilityResponse {
  /// Name of the SKU capability.
  final pulumi.Input<String?>? name;
  /// Reason of the SKU capability.
  final pulumi.Input<String?>? reason;
  /// Value of the SKU capability.
  final pulumi.Input<String?>? value;

  /// Creates a new [CapabilityResponse].
  /// [name] Name of the SKU capability.
  /// [reason] Reason of the SKU capability.
  /// [value] Value of the SKU capability.
  const CapabilityResponse({
    this.name,
    this.reason,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'reason': ?reason,
      'value': ?value,
    };
  }

  factory CapabilityResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
