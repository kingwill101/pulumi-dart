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
  ParserConfig({
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
      'version': ?pulumi.Input.mapOptionalInputValue<ParserConfigVersion, String>(version, (value) => value.value),
    };
  }

  factory ParserConfig.fromMap(Map<String, dynamic> map) {
    return ParserConfig(
      allowNullHeader: map['allowNullHeader'] == null ? null : (map['allowNullHeader']! as bool).input(),
      schema: map['schema'] == null ? null : (SchemaPackage.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      segmentTerminator: map['segmentTerminator'] == null ? null : (map['segmentTerminator']! as String).input(),
      version: map['version'] == null ? null : (ParserConfigVersion.fromValue(map['version']! as String)).input(),
    );
  }
}

