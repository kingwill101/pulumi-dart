// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_rrset_record.dart';

/// Result data returned by getZoneRrset.
class GetZoneRrsetResult {
  /// Whether change protection is enabled.
  final bool changeProtection;
  /// ID of the Zone RRSet.
  final String? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Name of the Zone RRSet.
  final String? name;
  /// Records of the Zone RRSet.
  final List<GetZoneRrsetRecord> records;
  /// Time To Live (TTL) of the Zone RRSet.
  final int ttl;
  /// Type of the Zone RRSet.
  final String? type;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? withSelector;
  /// ID or Name of the parent Zone.
  final String zone;

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
    required this.changeProtection,
    this.id,
    required this.labels,
    this.name,
    required this.records,
    required this.ttl,
    this.type,
    this.withSelector,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeProtection': changeProtection,
      'id': ?id,
      'labels': labels,
      'name': ?name,
      'records': pulumi.Input.encodeList<GetZoneRrsetRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'ttl': ttl,
      'type': ?type,
      'withSelector': ?withSelector,
      'zone': zone,
    };
  }

  factory GetZoneRrsetResult.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetResult(
      changeProtection: map['changeProtection'] as bool,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      records: pulumi.Input.decodeList<GetZoneRrsetRecord>(map['records']!, (value) => GetZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>())),
      ttl: map['ttl'] as int,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: map['zone'] as String,
    );
  }
}

