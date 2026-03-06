// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A DNS resource record.
class ResourceRecordResponse {
  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  final pulumi.Input<String> name;
  /// Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  final pulumi.Input<String> rrdata;
  /// Resource record type. Example: AAAA.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceRecordResponse].
  /// [name] Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  /// [rrdata] Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  /// [type] Resource record type. Example: AAAA.
  const ResourceRecordResponse({
    required this.name,
    required this.rrdata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rrdata': rrdata,
      'type': type,
    };
  }

  factory ResourceRecordResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRecordResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      rrdata: pulumi.Input.fromValue(map['rrdata'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

