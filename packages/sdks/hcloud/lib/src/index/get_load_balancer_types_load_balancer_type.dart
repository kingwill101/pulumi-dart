// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerTypesLoadBalancerType {
  /// Description of the Load Balancer Type.
  final pulumi.Input<String> description;
  /// ID of the Load Balancer Type.
  final pulumi.Input<int> id;
  /// Maximum number of certificates that can be assigned for the Load Balancer of this type.
  final pulumi.Input<int> maxAssignedCertificates;
  /// Maximum number of simultaneous open connections for the Load Balancer of this type.
  final pulumi.Input<int> maxConnections;
  /// Maximum number of services for the Load Balancer of this type.
  final pulumi.Input<int> maxServices;
  /// Maximum number of targets for the Load Balancer of this type.
  final pulumi.Input<int> maxTargets;
  /// Name of the Load Balancer Type.
  final pulumi.Input<String> name;

  /// Creates a new [GetLoadBalancerTypesLoadBalancerType].
  /// [description] Description of the Load Balancer Type.
  /// [id] ID of the Load Balancer Type.
  /// [maxAssignedCertificates] Maximum number of certificates that can be assigned for the Load Balancer of this type.
  /// [maxConnections] Maximum number of simultaneous open connections for the Load Balancer of this type.
  /// [maxServices] Maximum number of services for the Load Balancer of this type.
  /// [maxTargets] Maximum number of targets for the Load Balancer of this type.
  /// [name] Name of the Load Balancer Type.
  GetLoadBalancerTypesLoadBalancerType({
    required this.description,
    required this.id,
    required this.maxAssignedCertificates,
    required this.maxConnections,
    required this.maxServices,
    required this.maxTargets,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'maxAssignedCertificates': maxAssignedCertificates,
      'maxConnections': maxConnections,
      'maxServices': maxServices,
      'maxTargets': maxTargets,
      'name': name,
    };
  }

  factory GetLoadBalancerTypesLoadBalancerType.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypesLoadBalancerType(
      description: (map['description'] as String).input(),
      id: (map['id'] as int).input(),
      maxAssignedCertificates: (map['maxAssignedCertificates'] as int).input(),
      maxConnections: (map['maxConnections'] as int).input(),
      maxServices: (map['maxServices'] as int).input(),
      maxTargets: (map['maxTargets'] as int).input(),
      name: (map['name'] as String).input(),
    );
  }
}

