// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'legacy_disallowed_condition.dart';

/// The legacy policy.
class ResourceTypeRegistrationPropertiesLegacyPolicy {
  final List<LegacyDisallowedCondition>? disallowedConditions;
  final List<String>? disallowedLegacyOperations;

  /// Creates a new [ResourceTypeRegistrationPropertiesLegacyPolicy].
  /// [disallowedConditions] Optional.
  /// [disallowedLegacyOperations] Optional.
  ResourceTypeRegistrationPropertiesLegacyPolicy({
    this.disallowedConditions,
    this.disallowedLegacyOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedConditions': ?disallowedConditions == null ? null : pulumi.Input.encodeList<LegacyDisallowedCondition, Map<String, dynamic>>(disallowedConditions!, (value) => value.toMap()),
      'disallowedLegacyOperations': ?disallowedLegacyOperations,
    };
  }

  factory ResourceTypeRegistrationPropertiesLegacyPolicy.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesLegacyPolicy(
      disallowedConditions: map['disallowedConditions'] == null ? null : pulumi.Input.decodeList<LegacyDisallowedCondition>(map['disallowedConditions'], (value) => LegacyDisallowedCondition.fromMap((value as Map).cast<String, dynamic>())),
      disallowedLegacyOperations: map['disallowedLegacyOperations'] == null ? null : (map['disallowedLegacyOperations'] as List).cast<String>(),
    );
  }
}

