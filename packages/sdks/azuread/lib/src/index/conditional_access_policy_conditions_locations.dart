// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConditionalAccessPolicyConditionsLocations {
  /// A list of location IDs excluded from scope of policy. Can also be set to `AllTrusted`.
  final pulumi.Input<List<String>>? excludedLocations;
  /// A list of location IDs in scope of policy unless explicitly excluded. Can also be set to `All`, or `AllTrusted`.
  final pulumi.Input<List<String>> includedLocations;

  /// Creates a new [ConditionalAccessPolicyConditionsLocations].
  /// [excludedLocations] A list of location IDs excluded from scope of policy. Can also be set to `AllTrusted`.
  /// [includedLocations] A list of location IDs in scope of policy unless explicitly excluded. Can also be set to `All`, or `AllTrusted`.
  const ConditionalAccessPolicyConditionsLocations({
    this.excludedLocations,
    required this.includedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedLocations': ?excludedLocations,
      'includedLocations': includedLocations,
    };
  }

  factory ConditionalAccessPolicyConditionsLocations.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsLocations(
      excludedLocations: (() { final guardedValue = map['excludedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedLocations: pulumi.Input.fromValue((map['includedLocations'] as List).cast<String>()),
    );
  }
}

