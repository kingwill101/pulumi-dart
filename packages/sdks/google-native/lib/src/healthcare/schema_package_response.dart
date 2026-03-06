// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_schema_config_response.dart';
import 'hl7_types_config_response.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackageResponse {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final pulumi.Input<bool> ignoreMinOccurs;
  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final pulumi.Input<List<Hl7SchemaConfigResponse>> schemas;
  /// Determines how messages that fail to parse are handled.
  final pulumi.Input<String> schematizedParsingType;
  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final pulumi.Input<List<Hl7TypesConfigResponse>> types;
  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final pulumi.Input<String> unexpectedSegmentHandling;

  /// Creates a new [SchemaPackageResponse].
  /// [ignoreMinOccurs] Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  /// [schemas] Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  /// [schematizedParsingType] Determines how messages that fail to parse are handled.
  /// [types] Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  /// [unexpectedSegmentHandling] Determines how unexpected segments (segments not matched to the schema) are handled.
  const SchemaPackageResponse({
    required this.ignoreMinOccurs,
    required this.schemas,
    required this.schematizedParsingType,
    required this.types,
    required this.unexpectedSegmentHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMinOccurs': ignoreMinOccurs,
      'schemas': pulumi.Input.mapInputValue<List<Hl7SchemaConfigResponse>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<Hl7SchemaConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schematizedParsingType': schematizedParsingType,
      'types': pulumi.Input.mapInputValue<List<Hl7TypesConfigResponse>, List<Map<String, dynamic>>>(types, (value) => pulumi.Input.encodeList<Hl7TypesConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unexpectedSegmentHandling': unexpectedSegmentHandling,
    };
  }

  factory SchemaPackageResponse.fromMap(Map<String, dynamic> map) {
    return SchemaPackageResponse(
      ignoreMinOccurs: pulumi.Input.fromValue(map['ignoreMinOccurs'] as bool),
      schemas: pulumi.Input.fromValue(pulumi.Input.decodeList<Hl7SchemaConfigResponse>(map['schemas']!, (value) => Hl7SchemaConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      schematizedParsingType: pulumi.Input.fromValue(map['schematizedParsingType'] as String),
      types: pulumi.Input.fromValue(pulumi.Input.decodeList<Hl7TypesConfigResponse>(map['types']!, (value) => Hl7TypesConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      unexpectedSegmentHandling: pulumi.Input.fromValue(map['unexpectedSegmentHandling'] as String),
    );
  }
}

