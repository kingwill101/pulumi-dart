// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerReferencesDomain {
  /// ID of the TLS certificate issued for the custom domain.
  final pulumi.Input<String?>? certificateId;
  /// Full hostname of the custom domain, including the zone name.
  final pulumi.Input<String?>? hostname;
  /// ID of the custom domain.
  final pulumi.Input<String?>? id;
  /// ID of the zone.
  final pulumi.Input<String?>? zoneId;
  /// Name of the zone.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [WorkerReferencesDomain].
  /// [certificateId] ID of the TLS certificate issued for the custom domain.
  /// [hostname] Full hostname of the custom domain, including the zone name.
  /// [id] ID of the custom domain.
  /// [zoneId] ID of the zone.
  /// [zoneName] Name of the zone.
  const WorkerReferencesDomain({
    this.certificateId,
    this.hostname,
    this.id,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'hostname': ?hostname,
      'id': ?id,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory WorkerReferencesDomain.fromMap(Map<String, dynamic> map) {
    return WorkerReferencesDomain(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
