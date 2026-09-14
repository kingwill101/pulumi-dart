// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_authoritative_nameservers.dart';
import 'get_zone_primary_nameserver.dart';

/// Result data returned by getZone.
class GetZoneResult {
  /// Authoritative nameservers of the Zone.
  final GetZoneAuthoritativeNameservers? authoritativeNameservers;
  /// Whether delete protection is enabled.
  final bool? deleteProtection;
  /// ID of the Zone.
  final int? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String>? labels;
  /// Mode of the Zone.
  final String? mode;
  /// Name of the Zone.
  final String? name;
  /// Primary nameservers of the Zone.
  final List<GetZonePrimaryNameserver>? primaryNameservers;
  /// Registrar of the Zone.
  final String? registrar;
  /// Default Time To Live (TTL) of the Zone.
  final int? ttl;
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
  const GetZoneResult({
    this.authoritativeNameservers,
    this.deleteProtection,
    this.id,
    this.labels,
    this.mode,
    this.name,
    this.primaryNameservers,
    this.registrar,
    this.ttl,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authoritativeNameservers': ?authoritativeNameservers?.toMap(),
      'deleteProtection': ?deleteProtection,
      'id': ?id,
      'labels': ?labels,
      'mode': ?mode,
      'name': ?name,
      'primaryNameservers': ?(() { final guardedValue = primaryNameservers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZonePrimaryNameserver, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'registrar': ?registrar,
      'ttl': ?ttl,
      'withSelector': ?withSelector,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      authoritativeNameservers: (() { final guardedValue = map['authoritativeNameservers']; if (guardedValue == null) return null; return GetZoneAuthoritativeNameservers.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryNameservers: (() { final guardedValue = map['primaryNameservers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZonePrimaryNameserver>(guardedValue, (value) => GetZonePrimaryNameserver.fromMap((value as Map).cast<String, dynamic>())); })(),
      registrar: (() { final guardedValue = map['registrar']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
