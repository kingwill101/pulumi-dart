// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_package_response.dart';

/// The configuration for the parser. It determines how the server parses the messages.
class ParserConfigResponse {
  /// Determines whether messages with no header are allowed.
  final pulumi.Input<bool> allowNullHeader;
  /// Schemas used to parse messages in this store, if schematized parsing is desired.
  final pulumi.Input<SchemaPackageResponse> schema;
  /// Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  final pulumi.Input<String> segmentTerminator;
  /// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  final pulumi.Input<String> version;

  /// Creates a new [ParserConfigResponse].
  /// [allowNullHeader] Determines whether messages with no header are allowed.
  /// [schema] Schemas used to parse messages in this store, if schematized parsing is desired.
  /// [segmentTerminator] Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  /// [version] Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  ParserConfigResponse({
    required this.allowNullHeader,
    required this.schema,
    required this.segmentTerminator,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNullHeader': allowNullHeader,
      'schema': pulumi.Input.mapInputValue<SchemaPackageResponse, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'segmentTerminator': segmentTerminator,
      'version': version,
    };
  }

  factory ParserConfigResponse.fromMap(Map<String, dynamic> map) {
    return ParserConfigResponse(
      allowNullHeader: pulumi.Input.fromValue(map['allowNullHeader'] as bool),
      schema: pulumi.Input.fromValue(SchemaPackageResponse.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      segmentTerminator: pulumi.Input.fromValue(map['segmentTerminator'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

