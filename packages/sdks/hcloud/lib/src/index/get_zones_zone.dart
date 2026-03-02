// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone_authoritative_nameservers.dart';
import 'get_zones_zone_primary_nameserver.dart';

class GetZonesZone {
  /// Authoritative nameservers of the Zone.
  final pulumi.Input<GetZonesZoneAuthoritativeNameservers> authoritativeNameservers;
  /// Whether delete protection is enabled.
  final pulumi.Input<bool> deleteProtection;
  /// ID of the Zone.
  final pulumi.Input<int> id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Mode of the Zone.
  final pulumi.Input<String> mode;
  /// Name of the Zone.
  final pulumi.Input<String> name;
  /// Primary nameservers of the Zone.
  final pulumi.Input<List<GetZonesZonePrimaryNameserver>> primaryNameservers;
  /// Registrar of the Zone.
  final pulumi.Input<String> registrar;
  /// Default Time To Live (TTL) of the Zone.
  final pulumi.Input<int> ttl;

  /// Creates a new [GetZonesZone].
  /// [authoritativeNameservers] Authoritative nameservers of the Zone.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [id] ID of the Zone.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [mode] Mode of the Zone.
  /// [name] Name of the Zone.
  /// [primaryNameservers] Primary nameservers of the Zone.
  /// [registrar] Registrar of the Zone.
  /// [ttl] Default Time To Live (TTL) of the Zone.
  GetZonesZone({
    required this.authoritativeNameservers,
    required this.deleteProtection,
    required this.id,
    required this.labels,
    required this.mode,
    required this.name,
    required this.primaryNameservers,
    required this.registrar,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authoritativeNameservers': pulumi.Input.mapInputValue<GetZonesZoneAuthoritativeNameservers, Map<String, dynamic>>(authoritativeNameservers, (value) => value.toMap()),
      'deleteProtection': deleteProtection,
      'id': id,
      'labels': labels,
      'mode': mode,
      'name': name,
      'primaryNameservers': pulumi.Input.mapInputValue<List<GetZonesZonePrimaryNameserver>, List<Map<String, dynamic>>>(primaryNameservers, (value) => pulumi.Input.encodeList<GetZonesZonePrimaryNameserver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registrar': registrar,
      'ttl': ttl,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      authoritativeNameservers: (GetZonesZoneAuthoritativeNameservers.fromMap((map['authoritativeNameservers'] as Map).cast<String, dynamic>())).input(),
      deleteProtection: (map['deleteProtection'] as bool).input(),
      id: (map['id'] as int).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      mode: (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
      primaryNameservers: (pulumi.Input.decodeList<GetZonesZonePrimaryNameserver>(map['primaryNameservers'], (value) => GetZonesZonePrimaryNameserver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      registrar: (map['registrar'] as String).input(),
      ttl: (map['ttl'] as int).input(),
    );
  }
}

