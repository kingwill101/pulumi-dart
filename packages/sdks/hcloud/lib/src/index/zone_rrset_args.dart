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
    this.changeProtection,
    this.labels,
    this.name,
    required this.records,
    this.ttl,
    required this.type,
    required this.zone,
  });

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
      changeProtection: map['changeProtection'] == null ? null : (map['changeProtection']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      records: (pulumi.Input.decodeList<ZoneRrsetRecord>(map['records'], (value) => ZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
      type: (map['type'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

