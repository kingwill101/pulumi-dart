// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the policy to be used for placement of a Service Fabric service where the instances or replicas of that service must be placed in a particular domain.
class ServicePlacementRequiredDomainPolicyResponse {
  /// The name of the domain that should used for placement as per this policy.
  final pulumi.Input<String> domainName;
  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'RequiredDomain'.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePlacementRequiredDomainPolicyResponse].
  /// [domainName] The name of the domain that should used for placement as per this policy.
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementRequiredDomainPolicyResponse({
    required this.domainName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'type': type,
    };
  }

  factory ServicePlacementRequiredDomainPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ServicePlacementRequiredDomainPolicyResponse(
      domainName: (map['domainName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

