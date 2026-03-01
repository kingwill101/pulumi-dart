// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_rrset_record.dart';

/// {@template pulumi_index_zone_rrset_zone_rrset_args_doc}
/// The set of arguments for ZoneRrset.
/// {@endtemplate}
/// {@macro pulumi_index_zone_rrset_zone_rrset_args_doc}
class ZoneRrsetArgs {
  /// Whether change protection is enabled.
  final pulumi.Input<bool>? changeProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Zone RRSet.
  final pulumi.Input<String>? name;
  /// Records of the Zone RRSet.
  final pulumi.Input<List<ZoneRrsetRecord>> records;
  /// Time To Live (TTL) of the Zone RRSet.
  final pulumi.Input<int>? ttl;
  /// Type of the Zone RRSet.
  final pulumi.Input<String> type;
  /// ID or Name of the parent Zone.
  final pulumi.Input<String> zone;

  /// Creates a new [ZoneRrsetArgs].
  /// [changeProtection] Whether change protection is enabled.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Zone RRSet.
  /// [records] Records of the Zone RRSet.
  /// [ttl] Time To Live (TTL) of the Zone RRSet.
  /// [type] Type of the Zone RRSet.
  /// [zone] ID or Name of the parent Zone.
  ZoneRrsetArgs({
    pulumi.Output<bool>? changeProtection,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    required pulumi.Output<List<ZoneRrsetRecord>> records,
    pulumi.Output<int>? ttl,
    required pulumi.Output<String> type,
    required pulumi.Output<String> zone,
  }) :
      changeProtection = pulumi.Input.asOptionalInput<bool>(changeProtection),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asInput<List<ZoneRrsetRecord>>(records),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asInput<String>(type),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeProtection': ?changeProtection,
      'labels': ?labels,
      'name': ?name,
      'records': pulumi.Input.mapInputValue<List<ZoneRrsetRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<ZoneRrsetRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ?ttl,
      'type': type,
      'zone': zone,
    };
  }

  factory ZoneRrsetArgs.fromMap(Map<String, dynamic> map) {
    return ZoneRrsetArgs(
      changeProtection: map['changeProtection'] == null ? null : pulumi.Output.create<bool>(map['changeProtection'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: pulumi.Output.create<List<ZoneRrsetRecord>>(pulumi.Input.decodeList<ZoneRrsetRecord>(map['records'], (value) => ZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>()))),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

