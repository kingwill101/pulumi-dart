// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'legacy_disallowed_condition.dart';

/// The legacy policy.
class ResourceTypeRegistrationPropertiesLegacyPolicy {
  final pulumi.Input<List<LegacyDisallowedCondition>>? disallowedConditions;
  final pulumi.Input<List<String>>? disallowedLegacyOperations;

  /// Creates a new [ResourceTypeRegistrationPropertiesLegacyPolicy].
  /// [disallowedConditions] Optional.
  /// [disallowedLegacyOperations] Optional.
  const ResourceTypeRegistrationPropertiesLegacyPolicy({
    this.disallowedConditions,
    this.disallowedLegacyOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedConditions': ?pulumi.Input.mapOptionalInputValue<List<LegacyDisallowedCondition>, List<Map<String, dynamic>>>(disallowedConditions, (value) => pulumi.Input.encodeList<LegacyDisallowedCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disallowedLegacyOperations': ?disallowedLegacyOperations,
    };
  }

  factory ResourceTypeRegistrationPropertiesLegacyPolicy.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesLegacyPolicy(
      disallowedConditions: (() { final guardedValue = map['disallowedConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LegacyDisallowedCondition>(guardedValue, (value) => LegacyDisallowedCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disallowedLegacyOperations: (() { final guardedValue = map['disallowedLegacyOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

