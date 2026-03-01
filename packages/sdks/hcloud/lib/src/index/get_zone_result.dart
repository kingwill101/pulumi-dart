// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_authoritative_nameservers.dart';
import 'get_zone_primary_nameserver.dart';

/// Result data returned by getZone.
class GetZoneResult {
  /// Authoritative nameservers of the Zone.
  final GetZoneAuthoritativeNameservers authoritativeNameservers;
  /// Whether delete protection is enabled.
  final bool deleteProtection;
  /// ID of the Zone.
  final int? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Mode of the Zone.
  final String mode;
  /// Name of the Zone.
  final String? name;
  /// Primary nameservers of the Zone.
  final List<GetZonePrimaryNameserver> primaryNameservers;
  /// Registrar of the Zone.
  final String registrar;
  /// Default Time To Live (TTL) of the Zone.
  final int ttl;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? withSelector;

  /// Creates a new [GetZoneResult].
  /// [authoritativeNameservers] Authoritative nameservers of the Zone.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [id] ID of the Zone.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [mode] Mode of the Zone.
  /// [name] Name of the Zone.
  /// [primaryNameservers] Primary nameservers of the Zone.
  /// [registrar] Registrar of the Zone.
  /// [ttl] Default Time To Live (TTL) of the Zone.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  GetZoneResult({
    required this.authoritativeNameservers,
    required this.deleteProtection,
    this.id,
    required this.labels,
    required this.mode,
    this.name,
    required this.primaryNameservers,
    required this.registrar,
    required this.ttl,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authoritativeNameservers': authoritativeNameservers.toMap(),
      'deleteProtection': deleteProtection,
      'id': ?id,
      'labels': labels,
      'mode': mode,
      'name': ?name,
      'primaryNameservers': pulumi.Input.encodeList<GetZonePrimaryNameserver, Map<String, dynamic>>(primaryNameservers, (value) => value.toMap()),
      'registrar': registrar,
      'ttl': ttl,
      'withSelector': ?withSelector,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      authoritativeNameservers: GetZoneAuthoritativeNameservers.fromMap((map['authoritativeNameservers'] as Map).cast<String, dynamic>()),
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] == null ? null : map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      mode: map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      primaryNameservers: pulumi.Input.decodeList<GetZonePrimaryNameserver>(map['primaryNameservers'], (value) => GetZonePrimaryNameserver.fromMap((value as Map).cast<String, dynamic>())),
      registrar: map['registrar'] as String,
      ttl: map['ttl'] as int,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

