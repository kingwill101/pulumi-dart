// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_rrset_record.dart';

/// Result data returned by getZoneRrset.
class GetZoneRrsetResult {
  /// Whether change protection is enabled.
  final bool? changeProtection;
  /// ID of the Zone RRSet.
  final String? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String>? labels;
  /// Name of the Zone RRSet.
  final String? name;
  /// Records of the Zone RRSet.
  final List<GetZoneRrsetRecord>? records;
  /// Time To Live (TTL) of the Zone RRSet.
  final int? ttl;
  /// Type of the Zone RRSet.
  final String? type;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? withSelector;
  /// ID or Name of the parent Zone.
  final String? zone;

  /// Creates a new [GetZoneRrsetResult].
  /// [changeProtection] Whether change protection is enabled.
  /// [id] ID of the Zone RRSet.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Zone RRSet.
  /// [records] Records of the Zone RRSet.
  /// [ttl] Time To Live (TTL) of the Zone RRSet.
  /// [type] Type of the Zone RRSet.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [zone] ID or Name of the parent Zone.
  const GetZoneRrsetResult({
    this.changeProtection,
    this.id,
    this.labels,
    this.name,
    this.records,
    this.ttl,
    this.type,
    this.withSelector,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeProtection': ?changeProtection,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'records': ?(() { final guardedValue = records; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZoneRrsetRecord, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ttl': ?ttl,
      'type': ?type,
      'withSelector': ?withSelector,
      'zone': ?zone,
    };
  }

  factory GetZoneRrsetResult.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetResult(
      changeProtection: (() { final guardedValue = map['changeProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZoneRrsetRecord>(guardedValue, (value) => GetZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>())); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
