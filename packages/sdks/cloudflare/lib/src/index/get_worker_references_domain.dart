// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerReferencesDomain {
  /// ID of the TLS certificate issued for the custom domain.
  final pulumi.Input<String> certificateId;
  /// Full hostname of the custom domain, including the zone name.
  final pulumi.Input<String> hostname;
  /// ID of the custom domain.
  final pulumi.Input<String> id;
  /// ID of the zone.
  final pulumi.Input<String> zoneId;
  /// Name of the zone.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetWorkerReferencesDomain].
  /// [certificateId] ID of the TLS certificate issued for the custom domain.
  /// [hostname] Full hostname of the custom domain, including the zone name.
  /// [id] ID of the custom domain.
  /// [zoneId] ID of the zone.
  /// [zoneName] Name of the zone.
  const GetWorkerReferencesDomain({
    required this.certificateId,
    required this.hostname,
    required this.id,
    required this.zoneId,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'hostname': hostname,
      'id': id,
      'zoneId': zoneId,
      'zoneName': zoneName,
    };
  }

  factory GetWorkerReferencesDomain.fromMap(Map<String, dynamic> map) {
    return GetWorkerReferencesDomain(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
