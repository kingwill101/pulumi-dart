// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_zones_managed_zone.dart';

/// Result data returned by getManagedZones.
class GetManagedZonesResult {
  final String id;
  /// A list of managed zones.
  final List<GetManagedZonesManagedZone> managedZones;
  final String? project;

  /// Creates a new [GetManagedZonesResult].
  /// [id] Required.
  /// [managedZones] A list of managed zones.
  /// [project] Optional.
  const GetManagedZonesResult({
    required this.id,
    required this.managedZones,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'managedZones': pulumi.Input.encodeList<GetManagedZonesManagedZone, Map<String, dynamic>>(managedZones, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory GetManagedZonesResult.fromMap(Map<String, dynamic> map) {
    return GetManagedZonesResult(
      id: map['id'] as String,
      managedZones: pulumi.Input.decodeList<GetManagedZonesManagedZone>(map['managedZones']!, (value) => GetManagedZonesManagedZone.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
