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
  ConditionalAccessPolicyConditionsLocations({
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
      excludedLocations: map['excludedLocations'] == null ? null : ((map['excludedLocations']! as List).cast<String>()).input(),
      includedLocations: ((map['includedLocations'] as List).cast<String>()).input(),
    );
  }
}

