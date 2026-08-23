// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerTypesLoadBalancerType {
  /// Date of the Load Balancer Type deprecation announcement.
  final pulumi.Input<String> deprecationAnnounced;
  /// Description of the Load Balancer Type.
  final pulumi.Input<String> description;
  /// ID of the Load Balancer Type.
  final pulumi.Input<int> id;
  /// Whether the Load Balancer Type is deprecated.
  final pulumi.Input<bool> isDeprecated;
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
  /// Date of the Load Balancer Type removal. After this date, the Load Balancer Type cannot be used anymore.
  final pulumi.Input<String> unavailableAfter;

  /// Creates a new [GetLoadBalancerTypesLoadBalancerType].
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
  const GetLoadBalancerTypesLoadBalancerType({
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

  factory GetLoadBalancerTypesLoadBalancerType.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypesLoadBalancerType(
      deprecationAnnounced: pulumi.Input.fromValue(map['deprecationAnnounced'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      isDeprecated: pulumi.Input.fromValue(map['isDeprecated'] as bool),
      maxAssignedCertificates: pulumi.Input.fromValue(map['maxAssignedCertificates'] as int),
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      maxServices: pulumi.Input.fromValue(map['maxServices'] as int),
      maxTargets: pulumi.Input.fromValue(map['maxTargets'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      unavailableAfter: pulumi.Input.fromValue(map['unavailableAfter'] as String),
    );
  }
}
