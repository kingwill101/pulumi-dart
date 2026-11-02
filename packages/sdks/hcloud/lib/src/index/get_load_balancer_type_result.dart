// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLoadBalancerType.
class GetLoadBalancerTypeResult {
  /// Date of the Load Balancer Type deprecation announcement.
  final String? deprecationAnnounced;
  /// Description of the Load Balancer Type.
  final String? description;
  /// ID of the Load Balancer Type.
  final int? id;
  /// Whether the Load Balancer Type is deprecated.
  final bool? isDeprecated;
  /// Maximum number of certificates that can be assigned for the Load Balancer of this type.
  final int? maxAssignedCertificates;
  /// Maximum number of simultaneous open connections for the Load Balancer of this type.
  final int? maxConnections;
  /// Maximum number of services for the Load Balancer of this type.
  final int? maxServices;
  /// Maximum number of targets for the Load Balancer of this type.
  final int? maxTargets;
  /// Name of the Load Balancer Type.
  final String? name;
  /// Date of the Load Balancer Type removal. After this date, the Load Balancer Type cannot be used anymore.
  final String? unavailableAfter;

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
    this.deprecationAnnounced,
    this.description,
    this.id,
    this.isDeprecated,
    this.maxAssignedCertificates,
    this.maxConnections,
    this.maxServices,
    this.maxTargets,
    this.name,
    this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecationAnnounced': ?deprecationAnnounced,
      'description': ?description,
      'id': ?id,
      'isDeprecated': ?isDeprecated,
      'maxAssignedCertificates': ?maxAssignedCertificates,
      'maxConnections': ?maxConnections,
      'maxServices': ?maxServices,
      'maxTargets': ?maxTargets,
      'name': ?name,
      'unavailableAfter': ?unavailableAfter,
    };
  }

  factory GetLoadBalancerTypeResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypeResult(
      deprecationAnnounced: (() { final guardedValue = map['deprecationAnnounced']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      isDeprecated: (() { final guardedValue = map['isDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxAssignedCertificates: (() { final guardedValue = map['maxAssignedCertificates']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxServices: (() { final guardedValue = map['maxServices']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxTargets: (() { final guardedValue = map['maxTargets']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unavailableAfter: (() { final guardedValue = map['unavailableAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
