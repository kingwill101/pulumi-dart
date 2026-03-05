// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLoadBalancerType.
class GetLoadBalancerTypeResult {
  /// Description of the Load Balancer Type.
  final String description;
  /// ID of the Load Balancer Type.
  final int id;
  /// Maximum number of certificates that can be assigned for the Load Balancer of this type.
  final int maxAssignedCertificates;
  /// Maximum number of simultaneous open connections for the Load Balancer of this type.
  final int maxConnections;
  /// Maximum number of services for the Load Balancer of this type.
  final int maxServices;
  /// Maximum number of targets for the Load Balancer of this type.
  final int maxTargets;
  /// Name of the Load Balancer Type.
  final String name;

  /// Creates a new [GetLoadBalancerTypeResult].
  /// [description] Description of the Load Balancer Type.
  /// [id] ID of the Load Balancer Type.
  /// [maxAssignedCertificates] Maximum number of certificates that can be assigned for the Load Balancer of this type.
  /// [maxConnections] Maximum number of simultaneous open connections for the Load Balancer of this type.
  /// [maxServices] Maximum number of services for the Load Balancer of this type.
  /// [maxTargets] Maximum number of targets for the Load Balancer of this type.
  /// [name] Name of the Load Balancer Type.
  GetLoadBalancerTypeResult({
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

  factory GetLoadBalancerTypeResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypeResult(
      description: map['description'] as String,
      id: map['id'] as int,
      maxAssignedCertificates: map['maxAssignedCertificates'] as int,
      maxConnections: map['maxConnections'] as int,
      maxServices: map['maxServices'] as int,
      maxTargets: map['maxTargets'] as int,
      name: map['name'] as String,
    );
  }
}

