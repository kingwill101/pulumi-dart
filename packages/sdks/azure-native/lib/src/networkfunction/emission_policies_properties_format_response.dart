// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'emission_policy_destination_response.dart';

/// Emission policy properties.
class EmissionPoliciesPropertiesFormatResponse {
  /// Emission policy destinations.
  final pulumi.Input<List<EmissionPolicyDestinationResponse>?>? emissionDestinations;
  /// Emission format type.
  final pulumi.Input<String?>? emissionType;

  /// Creates a new [EmissionPoliciesPropertiesFormatResponse].
  /// [emissionDestinations] Emission policy destinations.
  /// [emissionType] Emission format type.
  const EmissionPoliciesPropertiesFormatResponse({
    this.emissionDestinations,
    this.emissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emissionDestinations': ?pulumi.Input.mapOptionalInputValue<List<EmissionPolicyDestinationResponse>, List<Map<String, dynamic>>>(emissionDestinations, (value) => pulumi.Input.encodeList<EmissionPolicyDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emissionType': ?emissionType,
    };
  }

  factory EmissionPoliciesPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return EmissionPoliciesPropertiesFormatResponse(
      emissionDestinations: (() { final guardedValue = map['emissionDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmissionPolicyDestinationResponse>(guardedValue, (value) => EmissionPolicyDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      emissionType: (() { final guardedValue = map['emissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
