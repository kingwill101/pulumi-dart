// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLoadBalancerType.
class GetLoadBalancerTypeResult {
  /// Date of the Load Balancer Type deprecation announcement.
  final String deprecationAnnounced;
  /// Description of the Load Balancer Type.
  final String description;
  /// ID of the Load Balancer Type.
  final int id;
  /// Whether the Load Balancer Type is deprecated.
  final bool isDeprecated;
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
  /// Date of the Load Balancer Type removal. After this date, the Load Balancer Type cannot be used anymore.
  final String unavailableAfter;

  /// Creates a new [GetLoadBalancerTypeResult].
  /// [deprecationAnnounced] Date of the Load Balancer Type deprecation announcement.
  /// [description] Description of the Load Balancer Type.
  /// [id] ID of the Load Balancer Type.
  /// [isDeprecated] Whether the Load Balancer Type is deprecated.
  /// [maxAssignedCertificates] Maximum number of certificates that can be assigned for the Load Balancer of this type.
  /// [maxConnections] Maximum number of simultaneous open connections for the Load Balancer of this type.
  /// [maxServices] Maximum number of services for the Load Balancer of this type.
  /// [maxTargets] Maximum number of targets for the Load Balancer of this type.
  /// [name] Name of the Load Balancer Type.
  /// [unavailableAfter] Date of the Load Balancer Type removal. After this date, the Load Balancer Type cannot be used anymore.
  const GetLoadBalancerTypeResult({
    required this.deprecationAnnounced,
    required this.description,
    required this.id,
    required this.isDeprecated,
    required this.maxAssignedCertificates,
    required this.maxConnections,
    required this.maxServices,
    required this.maxTargets,
    required this.name,
    required this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecationAnnounced': deprecationAnnounced,
      'description': description,
      'id': id,
      'isDeprecated': isDeprecated,
      'maxAssignedCertificates': maxAssignedCertificates,
      'maxConnections': maxConnections,
      'maxServices': maxServices,
      'maxTargets': maxTargets,
      'name': name,
      'unavailableAfter': unavailableAfter,
    };
  }

  factory GetLoadBalancerTypeResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypeResult(
      deprecationAnnounced: map['deprecationAnnounced'] as String,
      description: map['description'] as String,
      id: map['id'] as int,
      isDeprecated: map['isDeprecated'] as bool,
      maxAssignedCertificates: map['maxAssignedCertificates'] as int,
      maxConnections: map['maxConnections'] as int,
      maxServices: map['maxServices'] as int,
      maxTargets: map['maxTargets'] as int,
      name: map['name'] as String,
      unavailableAfter: map['unavailableAfter'] as String,
    );
  }
}
