// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A PTR record.
class PtrRecordResponse {
  /// The PTR target domain name for this PTR record.
  final pulumi.Input<String>? ptrdname;

  /// Creates a new [PtrRecordResponse].
  /// [ptrdname] The PTR target domain name for this PTR record.
  const PtrRecordResponse({
    this.ptrdname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ptrdname': ?ptrdname,
    };
  }

  factory PtrRecordResponse.fromMap(Map<String, dynamic> map) {
    return PtrRecordResponse(
      ptrdname: (() { final guardedValue = map['ptrdname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
