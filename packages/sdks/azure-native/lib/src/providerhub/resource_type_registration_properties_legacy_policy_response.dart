// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'legacy_disallowed_condition_response.dart';

/// The legacy policy.
class ResourceTypeRegistrationPropertiesLegacyPolicyResponse {
  final pulumi.Input<List<LegacyDisallowedConditionResponse>>? disallowedConditions;
  final pulumi.Input<List<String>>? disallowedLegacyOperations;

  /// Creates a new [ResourceTypeRegistrationPropertiesLegacyPolicyResponse].
  /// [disallowedConditions] Optional.
  /// [disallowedLegacyOperations] Optional.
  const ResourceTypeRegistrationPropertiesLegacyPolicyResponse({
    this.disallowedConditions,
    this.disallowedLegacyOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedConditions': ?pulumi.Input.mapOptionalInputValue<List<LegacyDisallowedConditionResponse>, List<Map<String, dynamic>>>(disallowedConditions, (value) => pulumi.Input.encodeList<LegacyDisallowedConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disallowedLegacyOperations': ?disallowedLegacyOperations,
    };
  }

  factory ResourceTypeRegistrationPropertiesLegacyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesLegacyPolicyResponse(
      disallowedConditions: (() { final guardedValue = map['disallowedConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LegacyDisallowedConditionResponse>(guardedValue, (value) => LegacyDisallowedConditionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disallowedLegacyOperations: (() { final guardedValue = map['disallowedLegacyOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

