// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Payload file for inline import job payload.
class PayloadFile {
  /// The file data.
  final pulumi.Input<String>? data;
  /// The file name.
  final pulumi.Input<String>? name;

  /// Creates a new [PayloadFile].
  /// [data] The file data.
  /// [name] The file name.
  const PayloadFile({
    this.data,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'name': ?name,
    };
  }

  factory PayloadFile.fromMap(Map<String, dynamic> map) {
    return PayloadFile(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
