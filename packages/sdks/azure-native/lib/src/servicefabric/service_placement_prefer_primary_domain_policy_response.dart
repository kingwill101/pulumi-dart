// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the policy to be used for placement of a Service Fabric service where the service's
/// Primary replicas should optimally be placed in a particular domain.
///
/// This placement policy is usually used with fault domains in scenarios where the Service Fabric
/// cluster is geographically distributed in order to indicate that a service's primary replica should
/// be located in a particular fault domain, which in geo-distributed scenarios usually aligns with regional
/// or datacenter boundaries. Note that since this is an optimization it is possible that the Primary replica
/// may not end up located in this domain due to failures, capacity limits, or other constraints.
class ServicePlacementPreferPrimaryDomainPolicyResponse {
  /// The name of the domain that should used for placement as per this policy.
  final pulumi.Input<String> domainName;
  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'PreferredPrimaryDomain'.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePlacementPreferPrimaryDomainPolicyResponse].
  /// [domainName] The name of the domain that should used for placement as per this policy.
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementPreferPrimaryDomainPolicyResponse({
    required this.domainName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'type': type,
    };
  }

  factory ServicePlacementPreferPrimaryDomainPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ServicePlacementPreferPrimaryDomainPolicyResponse(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

