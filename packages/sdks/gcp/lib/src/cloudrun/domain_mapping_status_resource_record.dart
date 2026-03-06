// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMappingStatusResourceRecord {
  /// Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  final pulumi.Input<String>? name;
  /// (Output)
  /// Data for this record. Values vary by record type, as defined in RFC 1035
  /// (section 5) and RFC 1034 (section 3.6.1).
  final pulumi.Input<String>? rrdata;
  /// Resource record type. Example: `AAAA`.
  /// Possible values are: `A`, `AAAA`, `CNAME`.
  final pulumi.Input<String>? type;

  /// Creates a new [DomainMappingStatusResourceRecord].
  /// [name] Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  /// [rrdata] (Output)
  /// [type] Resource record type. Example: `AAAA`.
  const DomainMappingStatusResourceRecord({
    this.name,
    this.rrdata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'rrdata': ?rrdata,
      'type': ?type,
    };
  }

  factory DomainMappingStatusResourceRecord.fromMap(Map<String, dynamic> map) {
    return DomainMappingStatusResourceRecord(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rrdata: (() { final guardedValue = map['rrdata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

