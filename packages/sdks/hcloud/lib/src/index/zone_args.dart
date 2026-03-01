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
  ZoneArgs({
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> mode,
    pulumi.Output<String>? name,
    pulumi.Output<List<ZonePrimaryNameserver>>? primaryNameservers,
    pulumi.Output<int>? ttl,
  }) :
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      mode = pulumi.Input.asInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryNameservers = pulumi.Input.asOptionalInput<List<ZonePrimaryNameserver>>(primaryNameservers),
      ttl = pulumi.Input.asOptionalInput<int>(ttl);

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
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      mode: pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryNameservers: map['primaryNameservers'] == null ? null : pulumi.Output.create<List<ZonePrimaryNameserver>>(pulumi.Input.decodeList<ZonePrimaryNameserver>(map['primaryNameservers'], (value) => ZonePrimaryNameserver.fromMap((value as Map).cast<String, dynamic>()))),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
    );
  }
}

