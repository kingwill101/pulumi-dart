// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_security_policy_security_policy.dart';

/// Result data returned by getFrontdoorSecurityPolicy.
class GetFrontdoorSecurityPolicyResult {
  /// The ID of the Front Door Profile associated with this Front Door Security Policy.
  final String? cdnFrontdoorProfileId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? profileName;
  final String? resourceGroupName;
  /// A `securityPolicies` block as defined below.
  final List<GetFrontdoorSecurityPolicySecurityPolicy>? securityPolicies;

  /// Creates a new [GetFrontdoorSecurityPolicyResult].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile associated with this Front Door Security Policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [profileName] Optional.
  /// [resourceGroupName] Optional.
  /// [securityPolicies] A `securityPolicies` block as defined below.
  const GetFrontdoorSecurityPolicyResult({
    this.cdnFrontdoorProfileId,
    this.id,
    this.name,
    this.profileName,
    this.resourceGroupName,
    this.securityPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'id': ?id,
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': ?resourceGroupName,
      'securityPolicies': ?(() { final guardedValue = securityPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrontdoorSecurityPolicySecurityPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFrontdoorSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecurityPolicyResult(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicies: (() { final guardedValue = map['securityPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrontdoorSecurityPolicySecurityPolicy>(guardedValue, (value) => GetFrontdoorSecurityPolicySecurityPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
