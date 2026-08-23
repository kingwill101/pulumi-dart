// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_authoritative_nameservers.dart';
import 'zone_primary_nameserver.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// Authoritative nameservers of the Zone.
  final pulumi.Input<ZoneAuthoritativeNameservers>? authoritativeNameservers;
  /// Whether delete protection is enabled.
  final pulumi.Input<bool>? deleteProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Mode of the Zone.
  final pulumi.Input<String>? mode;
  /// Name of the Zone.
  final pulumi.Input<String>? name;
  /// Primary nameservers of the Zone. Forbidden when mode is primary and required when mode is secondary.
  final pulumi.Input<List<ZonePrimaryNameserver>>? primaryNameservers;
  /// Registrar of the Zone.
  final pulumi.Input<String>? registrar;
  /// Default Time To Live (TTL) of the Zone.
  final pulumi.Input<int>? ttl;

  /// Creates a new [ZoneState].
  /// [authoritativeNameservers] Authoritative nameservers of the Zone.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [mode] Mode of the Zone.
  /// [name] Name of the Zone.
  /// [primaryNameservers] Primary nameservers of the Zone. Forbidden when mode is primary and required when mode is secondary.
  /// [registrar] Registrar of the Zone.
  /// [ttl] Default Time To Live (TTL) of the Zone.
  const ZoneState({
    this.authoritativeNameservers,
    this.deleteProtection,
    this.labels,
    this.mode,
    this.name,
    this.primaryNameservers,
    this.registrar,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authoritativeNameservers': ?pulumi.Input.mapOptionalInputValue<ZoneAuthoritativeNameservers, Map<String, dynamic>>(authoritativeNameservers, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'mode': ?mode,
      'name': ?name,
      'primaryNameservers': ?pulumi.Input.mapOptionalInputValue<List<ZonePrimaryNameserver>, List<Map<String, dynamic>>>(primaryNameservers, (value) => pulumi.Input.encodeList<ZonePrimaryNameserver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registrar': ?registrar,
      'ttl': ?ttl,
    };
  }

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      authoritativeNameservers: (() { final guardedValue = map['authoritativeNameservers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneAuthoritativeNameservers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryNameservers: (() { final guardedValue = map['primaryNameservers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZonePrimaryNameserver>(guardedValue, (value) => ZonePrimaryNameserver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      registrar: (() { final guardedValue = map['registrar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
