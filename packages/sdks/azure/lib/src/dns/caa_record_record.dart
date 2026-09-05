// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaaRecordRecord {
  /// Extensible CAA flags, currently only 1 is implemented to set the issuer critical flag.
  final pulumi.Input<int> flags;
  /// A property tag, options are `issue`, `issuewild`, `iodef`, and `contactemail`.
  final pulumi.Input<String> tag;
  /// A property value such as a registrar domain.
  final pulumi.Input<String> value;

  /// Creates a new [CaaRecordRecord].
  /// [flags] Extensible CAA flags, currently only 1 is implemented to set the issuer critical flag.
  /// [tag] A property tag, options are `issue`, `issuewild`, `iodef`, and `contactemail`.
  /// [value] A property value such as a registrar domain.
  const CaaRecordRecord({
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

  factory CaaRecordRecord.fromMap(Map<String, dynamic> map) {
    return CaaRecordRecord(
      flags: pulumi.Input.fromValue((map['flags'] as num).toInt()),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
