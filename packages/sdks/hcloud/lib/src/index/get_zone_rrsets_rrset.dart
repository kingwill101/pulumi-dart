// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_rrsets_rrset_record.dart';

class GetZoneRrsetsRrset {
  /// Whether change protection is enabled.
  final pulumi.Input<bool> changeProtection;
  /// ID of the Zone RRSet.
  final pulumi.Input<String> id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Name of the Zone RRSet.
  final pulumi.Input<String> name;
  /// Records of the Zone RRSet.
  final pulumi.Input<List<GetZoneRrsetsRrsetRecord>> records;
  /// Time To Live (TTL) of the Zone RRSet.
  final pulumi.Input<int> ttl;
  /// Type of the Zone RRSet.
  final pulumi.Input<String> type;
  /// ID or Name of the parent Zone.
  final pulumi.Input<String> zone;

  /// Creates a new [GetZoneRrsetsRrset].
  /// [changeProtection] Whether change protection is enabled.
  /// [id] ID of the Zone RRSet.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Zone RRSet.
  /// [records] Records of the Zone RRSet.
  /// [ttl] Time To Live (TTL) of the Zone RRSet.
  /// [type] Type of the Zone RRSet.
  /// [zone] ID or Name of the parent Zone.
  GetZoneRrsetsRrset({
    required this.changeProtection,
    required this.id,
    required this.labels,
    required this.name,
    required this.records,
    required this.ttl,
    required this.type,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeProtection': changeProtection,
      'id': id,
      'labels': labels,
      'name': name,
      'records': pulumi.Input.mapInputValue<List<GetZoneRrsetsRrsetRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<GetZoneRrsetsRrsetRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ttl,
      'type': type,
      'zone': zone,
    };
  }

  factory GetZoneRrsetsRrset.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetsRrset(
      changeProtection: pulumi.Input.fromValue(map['changeProtection'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      records: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZoneRrsetsRrsetRecord>(map['records']!, (value) => GetZoneRrsetsRrsetRecord.fromMap((value as Map).cast<String, dynamic>()))),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

