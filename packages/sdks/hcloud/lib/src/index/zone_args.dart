// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_primary_nameserver.dart';

/// {@template pulumi_index_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_index_zone_zone_args_doc}
class ZoneArgs {
  /// Whether delete protection is enabled.
  final pulumi.Input<bool>? deleteProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Mode of the Zone.
  final pulumi.Input<String> mode;
  /// Name of the Zone.
  final pulumi.Input<String>? name;
  /// Primary nameservers of the Zone. Forbidden when mode is primary and required when mode is secondary.
  final pulumi.Input<List<ZonePrimaryNameserver>>? primaryNameservers;
  /// Default Time To Live (TTL) of the Zone.
  final pulumi.Input<int>? ttl;

  /// Creates a new [ZoneArgs].
  /// [deleteProtection] Whether delete protection is enabled.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [mode] Mode of the Zone.
  /// [name] Name of the Zone.
  /// [primaryNameservers] Primary nameservers of the Zone. Forbidden when mode is primary and required when mode is secondary.
  /// [ttl] Default Time To Live (TTL) of the Zone.
  const ZoneArgs({
    this.deleteProtection,
    this.labels,
    required this.mode,
    this.name,
    this.primaryNameservers,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'mode': mode,
      'name': ?name,
      'primaryNameservers': ?pulumi.Input.mapOptionalInputValue<List<ZonePrimaryNameserver>, List<Map<String, dynamic>>>(primaryNameservers, (value) => pulumi.Input.encodeList<ZonePrimaryNameserver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ?ttl,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryNameservers: (() { final guardedValue = map['primaryNameservers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZonePrimaryNameserver>(guardedValue, (value) => ZonePrimaryNameserver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
