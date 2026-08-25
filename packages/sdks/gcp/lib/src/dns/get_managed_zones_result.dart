// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_zones_managed_zone.dart';

/// Result data returned by getManagedZones.
class GetManagedZonesResult {
  final String? id;
  /// A list of managed zones.
  final List<GetManagedZonesManagedZone>? managedZones;
  final String? project;

  /// Creates a new [GetManagedZonesResult].
  /// [id] Optional.
  /// [managedZones] A list of managed zones.
  /// [project] Optional.
  const GetManagedZonesResult({
    this.id,
    this.managedZones,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'managedZones': ?(() { final guardedValue = managedZones; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedZonesManagedZone, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
    };
  }

  factory GetManagedZonesResult.fromMap(Map<String, dynamic> map) {
    return GetManagedZonesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedZones: (() { final guardedValue = map['managedZones']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedZonesManagedZone>(guardedValue, (value) => GetManagedZonesManagedZone.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
