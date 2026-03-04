// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the policy to be used for placement of a Service Fabric service where two replicas
/// from the same partition should never be placed in the same fault or upgrade domain.
///
/// While this is not common it can expose the service to an increased risk of concurrent failures
/// due to unplanned outages or other cases of subsequent/concurrent failures. As an example, consider
/// a case where replicas are deployed across different data center, with one replica per location.
/// In the event that one of the datacenters goes offline, normally the replica that was placed in that
/// datacenter will be packed into one of the remaining datacenters. If this is not desirable then this
/// policy should be set.
class ServicePlacementRequireDomainDistributionPolicyResponse {
  /// The name of the domain that should used for placement as per this policy.
  final pulumi.Input<String> domainName;

  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'RequiredDomainDistribution'.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePlacementRequireDomainDistributionPolicyResponse].
  /// [domainName] The name of the domain that should used for placement as per this policy.
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementRequireDomainDistributionPolicyResponse({
    required this.domainName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domainName': domainName, 'type': type};
  }

  factory ServicePlacementRequireDomainDistributionPolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePlacementRequireDomainDistributionPolicyResponse(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
