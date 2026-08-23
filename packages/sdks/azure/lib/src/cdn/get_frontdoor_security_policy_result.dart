// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_security_policy_security_policy.dart';

/// Result data returned by getFrontdoorSecurityPolicy.
class GetFrontdoorSecurityPolicyResult {
  /// The ID of the Front Door Profile associated with this Front Door Security Policy.
  final String cdnFrontdoorProfileId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String profileName;
  final String resourceGroupName;
  /// A `securityPolicies` block as defined below.
  final List<GetFrontdoorSecurityPolicySecurityPolicy> securityPolicies;

  /// Creates a new [GetFrontdoorSecurityPolicyResult].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile associated with this Front Door Security Policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [profileName] Required.
  /// [resourceGroupName] Required.
  /// [securityPolicies] A `securityPolicies` block as defined below.
  const GetFrontdoorSecurityPolicyResult({
    required this.cdnFrontdoorProfileId,
    required this.id,
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
    required this.securityPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'id': id,
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'securityPolicies': pulumi.Input.encodeList<GetFrontdoorSecurityPolicySecurityPolicy, Map<String, dynamic>>(securityPolicies, (value) => value.toMap()),
    };
  }

  factory GetFrontdoorSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecurityPolicyResult(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityPolicies: pulumi.Input.decodeList<GetFrontdoorSecurityPolicySecurityPolicy>(map['securityPolicies']!, (value) => GetFrontdoorSecurityPolicySecurityPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
