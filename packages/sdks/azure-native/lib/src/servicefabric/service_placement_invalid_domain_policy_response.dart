// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the policy to be used for placement of a Service Fabric service where a particular fault or upgrade domain should not be used for placement of the instances or replicas of that service.
class ServicePlacementInvalidDomainPolicyResponse {
  /// The name of the domain that should not be used for placement.
  final pulumi.Input<String> domainName;

  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'InvalidDomain'.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePlacementInvalidDomainPolicyResponse].
  /// [domainName] The name of the domain that should not be used for placement.
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementInvalidDomainPolicyResponse({
    required this.domainName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domainName': domainName, 'type': type};
  }

  factory ServicePlacementInvalidDomainPolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePlacementInvalidDomainPolicyResponse(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
