// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParserExtensionDynamicParsingOptedField {
  /// Path of the log field.
  final pulumi.Input<String?>? path;
  /// Sample value of the log field.
  final pulumi.Input<String?>? sampleValue;

  /// Creates a new [ParserExtensionDynamicParsingOptedField].
  /// [path] Path of the log field.
  /// [sampleValue] Sample value of the log field.
  const ParserExtensionDynamicParsingOptedField({
    this.path,
    this.sampleValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'sampleValue': ?sampleValue,
    };
  }

  factory ParserExtensionDynamicParsingOptedField.fromMap(Map<String, dynamic> map) {
    return ParserExtensionDynamicParsingOptedField(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleValue: (() { final guardedValue = map['sampleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
