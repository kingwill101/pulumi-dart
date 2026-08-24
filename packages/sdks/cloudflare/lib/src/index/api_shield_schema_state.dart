// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_schema_schema.dart';
import 'api_shield_schema_upload_details.dart';

/// Input properties used for looking up and filtering ApiShieldSchema resources.
class ApiShieldSchemaState {
  final pulumi.Input<String?>? createdAt;
  /// Schema file bytes
  final pulumi.Input<String?>? file;
  /// Kind of schema
  /// Available values: "openapiV3".
  final pulumi.Input<String?>? kind;
  /// Name of the schema
  final pulumi.Input<String?>? name;
  final pulumi.Input<ApiShieldSchemaSchema?>? schema;
  final pulumi.Input<String?>? schemaId;
  /// Source of the schema
  final pulumi.Input<String?>? source;
  final pulumi.Input<ApiShieldSchemaUploadDetails?>? uploadDetails;
  /// Flag whether schema is enabled for validation.
  /// Available values: "true", "false".
  final pulumi.Input<String?>? validationEnabled;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldSchemaState].
  /// [createdAt] Optional.
  /// [file] Schema file bytes
  /// [kind] Kind of schema
  /// [name] Name of the schema
  /// [schema] Optional.
  /// [schemaId] Optional.
  /// [source] Source of the schema
  /// [uploadDetails] Optional.
  /// [validationEnabled] Flag whether schema is enabled for validation.
  /// [zoneId] Identifier.
  const ApiShieldSchemaState({
    this.createdAt,
    this.file,
    this.kind,
    this.name,
    this.schema,
    this.schemaId,
    this.source,
    this.uploadDetails,
    this.validationEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'file': ?file,
      'kind': ?kind,
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<ApiShieldSchemaSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'schemaId': ?schemaId,
      'source': ?source,
      'uploadDetails': ?pulumi.Input.mapOptionalInputValue<ApiShieldSchemaUploadDetails, Map<String, dynamic>>(uploadDetails, (value) => value.toMap()),
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldSchemaState.fromMap(Map<String, dynamic> map) {
    return ApiShieldSchemaState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldSchemaSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadDetails: (() { final guardedValue = map['uploadDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldSchemaUploadDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
