// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_config_version.dart';
import 'schema_package.dart';

/// The configuration for the parser. It determines how the server parses the messages.
class ParserConfig {
  /// Determines whether messages with no header are allowed.
  final pulumi.Input<bool>? allowNullHeader;
  /// Schemas used to parse messages in this store, if schematized parsing is desired.
  final pulumi.Input<SchemaPackage>? schema;
  /// Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  final pulumi.Input<String>? segmentTerminator;
  /// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  final pulumi.Input<ParserConfigVersion>? version;

  /// Creates a new [ParserConfig].
  /// [allowNullHeader] Determines whether messages with no header are allowed.
  /// [schema] Schemas used to parse messages in this store, if schematized parsing is desired.
  /// [segmentTerminator] Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  /// [version] Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  const ParserConfig({
    this.allowNullHeader,
    this.schema,
    this.segmentTerminator,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNullHeader': ?allowNullHeader,
      'schema': ?pulumi.Input.mapOptionalInputValue<SchemaPackage, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'segmentTerminator': ?segmentTerminator,
      'version': ?pulumi.Input.mapOptionalInputValue<ParserConfigVersion, String>(version, (value) => value.wireValue),
    };
  }

  factory ParserConfig.fromMap(Map<String, dynamic> map) {
    return ParserConfig(
      allowNullHeader: (() { final guardedValue = map['allowNullHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaPackage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      segmentTerminator: (() { final guardedValue = map['segmentTerminator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserConfigVersion.fromValue(guardedValue as String)); })(),
    );
  }
}

