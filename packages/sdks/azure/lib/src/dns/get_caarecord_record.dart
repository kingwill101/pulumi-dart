// ignore_for_file: unused_element, unnecessary_cast


class GetCAARecordRecord {
  /// Extensible CAA flags, currently only 1 is implemented to set the issuer critical flag.
  final int flags;
  /// A property tag, options are `issue`, `issuewild`, `iodef`, and `contactemail`.
  final String tag;
  /// A property value such as a registrar domain.
  final String value;

  /// Creates a new [GetCAARecordRecord].
  /// [flags] Extensible CAA flags, currently only 1 is implemented to set the issuer critical flag.
  /// [tag] A property tag, options are `issue`, `issuewild`, `iodef`, and `contactemail`.
  /// [value] A property value such as a registrar domain.
  GetCAARecordRecord({
    required this.flags,
    required this.tag,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': flags,
      'tag': tag,
      'value': value,
    };
  }

  factory GetCAARecordRecord.fromMap(Map<String, dynamic> map) {
    return GetCAARecordRecord(
      flags: map['flags'] as int,
      tag: map['tag'] as String,
      value: map['value'] as String,
    );
  }
}

