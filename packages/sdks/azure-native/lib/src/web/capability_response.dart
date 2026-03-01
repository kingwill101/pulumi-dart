// ignore_for_file: unused_element, unnecessary_cast


/// Describes the capabilities/features allowed for a specific SKU.
class CapabilityResponse {
  /// Name of the SKU capability.
  final String? name;
  /// Reason of the SKU capability.
  final String? reason;
  /// Value of the SKU capability.
  final String? value;

  /// Creates a new [CapabilityResponse].
  /// [name] Name of the SKU capability.
  /// [reason] Reason of the SKU capability.
  /// [value] Value of the SKU capability.
  CapabilityResponse({
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
      name: map['name'] == null ? null : map['name'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

