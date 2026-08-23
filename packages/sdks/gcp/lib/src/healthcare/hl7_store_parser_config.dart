// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Hl7StoreParserConfig {
  /// Determines whether messages with no header are allowed.
  final pulumi.Input<bool>? allowNullHeader;
  /// JSON encoded string for schemas used to parse messages in this
  /// store if schematized parsing is desired.
  final pulumi.Input<String>? schema;
  /// Byte(s) to be used as the segment terminator. If this is unset, '\r' will be used as segment terminator.
  /// A base64-encoded string.
  final pulumi.Input<String>? segmentTerminator;
  /// The version of the unschematized parser to be used when a custom `schema` is not set.
  /// Default value is `V1`.
  /// Possible values are: `V1`, `V2`, `V3`.
  final pulumi.Input<String>? version;

  /// Creates a new [Hl7StoreParserConfig].
  /// [allowNullHeader] Determines whether messages with no header are allowed.
  /// [schema] JSON encoded string for schemas used to parse messages in this
  /// [segmentTerminator] Byte(s) to be used as the segment terminator. If this is unset, '\r' will be used as segment terminator.
  /// [version] The version of the unschematized parser to be used when a custom `schema` is not set.
  const Hl7StoreParserConfig({
    this.allowNullHeader,
    this.schema,
    this.segmentTerminator,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNullHeader': ?allowNullHeader,
      'schema': ?schema,
      'segmentTerminator': ?segmentTerminator,
      'version': ?version,
    };
  }

  factory Hl7StoreParserConfig.fromMap(Map<String, dynamic> map) {
    return Hl7StoreParserConfig(
      allowNullHeader: (() { final guardedValue = map['allowNullHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentTerminator: (() { final guardedValue = map['segmentTerminator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
