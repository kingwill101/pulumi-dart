// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the policy to be used for placement of a Service Fabric service where the instances or replicas of that service must be placed in a particular domain.
class ServicePlacementRequiredDomainPolicy {
  /// The name of the domain that should used for placement as per this policy.
  final pulumi.Input<String> domainName;

  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'RequiredDomain'.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePlacementRequiredDomainPolicy].
  /// [domainName] The name of the domain that should used for placement as per this policy.
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementRequiredDomainPolicy({
    required this.domainName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domainName': domainName, 'type': type};
  }

  factory ServicePlacementRequiredDomainPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePlacementRequiredDomainPolicy(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
