// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_type.dart';

/// A DNS resource record.
class ResourceRecord {
  /// Relative name of the object affected by this record. Only applicable for `CNAME` records. Example: 'www'.
  final pulumi.Input<String>? name;
  /// Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  final pulumi.Input<String>? rrdata;
  /// Resource record type. Example: `AAAA`.
  final pulumi.Input<ResourceRecordType>? type;

  /// Creates a new [ResourceRecord].
  /// [name] Relative name of the object affected by this record. Only applicable for `CNAME` records. Example: 'www'.
  /// [rrdata] Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  /// [type] Resource record type. Example: `AAAA`.
  ResourceRecord({
    this.name,
    this.rrdata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'rrdata': ?rrdata,
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceRecordType, String>(type, (value) => value.value),
    };
  }

  factory ResourceRecord.fromMap(Map<String, dynamic> map) {
    return ResourceRecord(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      rrdata: map['rrdata'] == null ? null : (map['rrdata']! as String).input(),
      type: map['type'] == null ? null : (ResourceRecordType.fromValue(map['type']! as String)).input(),
    );
  }
}

