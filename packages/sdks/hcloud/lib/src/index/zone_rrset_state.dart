// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_rrset_record.dart';

/// Input properties used for looking up and filtering ZoneRrset resources.
class ZoneRrsetState {
  /// Whether change protection is enabled.
  final pulumi.Input<bool>? changeProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Zone RRSet.
  final pulumi.Input<String>? name;
  /// Records of the Zone RRSet.
  final pulumi.Input<List<ZoneRrsetRecord>>? records;
  /// Time To Live (TTL) of the Zone RRSet.
  final pulumi.Input<int>? ttl;
  /// Type of the Zone RRSet.
  final pulumi.Input<String>? type;
  /// ID or Name of the parent Zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [ZoneRrsetState].
  /// [changeProtection] Whether change protection is enabled.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Zone RRSet.
  /// [records] Records of the Zone RRSet.
  /// [ttl] Time To Live (TTL) of the Zone RRSet.
  /// [type] Type of the Zone RRSet.
  /// [zone] ID or Name of the parent Zone.
  ZoneRrsetState({
    this.changeProtection,
    this.labels,
    this.name,
    this.records,
    this.ttl,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeProtection': ?changeProtection,
      'labels': ?labels,
      'name': ?name,
      'records': ?pulumi.Input.mapOptionalInputValue<List<ZoneRrsetRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<ZoneRrsetRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ?ttl,
      'type': ?type,
      'zone': ?zone,
    };
  }

  factory ZoneRrsetState.fromMap(Map<String, dynamic> map) {
    return ZoneRrsetState(
      changeProtection: (() { final guardedValue = map['changeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneRrsetRecord>(guardedValue, (value) => ZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

