// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'emission_policy_destination.dart';

/// Emission policy properties.
class EmissionPoliciesPropertiesFormat {
  /// Emission policy destinations.
  final pulumi.Input<List<EmissionPolicyDestination>?>? emissionDestinations;
  /// Emission format type.
  final pulumi.Input<dynamic>? emissionType;

  /// Creates a new [EmissionPoliciesPropertiesFormat].
  /// [emissionDestinations] Emission policy destinations.
  /// [emissionType] Emission format type.
  const EmissionPoliciesPropertiesFormat({
    this.emissionDestinations,
    this.emissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emissionDestinations': ?pulumi.Input.mapOptionalInputValue<List<EmissionPolicyDestination>, List<Map<String, dynamic>>>(emissionDestinations, (value) => pulumi.Input.encodeList<EmissionPolicyDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emissionType': ?emissionType,
    };
  }

  factory EmissionPoliciesPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return EmissionPoliciesPropertiesFormat(
      emissionDestinations: (() { final guardedValue = map['emissionDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmissionPolicyDestination>(guardedValue, (value) => EmissionPolicyDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      emissionType: (() { final guardedValue = map['emissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
