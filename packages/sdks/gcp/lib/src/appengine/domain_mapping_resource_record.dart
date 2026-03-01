// ignore_for_file: unused_element, unnecessary_cast


class DomainMappingResourceRecord {
  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  final String? name;
  /// Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  final String? rrdata;
  /// Resource record type. Example: `AAAA`.
  /// Possible values are: `A`, `AAAA`, `CNAME`.
  final String? type;

  /// Creates a new [DomainMappingResourceRecord].
  /// [name] Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  /// [rrdata] Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
  /// [type] Resource record type. Example: `AAAA`.
  DomainMappingResourceRecord({
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

  factory DomainMappingResourceRecord.fromMap(Map<String, dynamic> map) {
    return DomainMappingResourceRecord(
      name: map['name'] == null ? null : map['name'] as String,
      rrdata: map['rrdata'] == null ? null : map['rrdata'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

