// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_schema_config.dart';
import 'hl7_types_config.dart';
import 'schema_package_schematized_parsing_type.dart';
import 'schema_package_unexpected_segment_handling.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackage {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final pulumi.Input<bool>? ignoreMinOccurs;
  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final pulumi.Input<List<Hl7SchemaConfig>>? schemas;
  /// Determines how messages that fail to parse are handled.
  final pulumi.Input<SchemaPackageSchematizedParsingType>? schematizedParsingType;
  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final pulumi.Input<List<Hl7TypesConfig>>? types;
  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final pulumi.Input<SchemaPackageUnexpectedSegmentHandling>? unexpectedSegmentHandling;

  /// Creates a new [SchemaPackage].
  /// [ignoreMinOccurs] Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  /// [schemas] Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  /// [schematizedParsingType] Determines how messages that fail to parse are handled.
  /// [types] Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  /// [unexpectedSegmentHandling] Determines how unexpected segments (segments not matched to the schema) are handled.
  const SchemaPackage({
    this.ignoreMinOccurs,
    this.schemas,
    this.schematizedParsingType,
    this.types,
    this.unexpectedSegmentHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMinOccurs': ?ignoreMinOccurs,
      'schemas': ?pulumi.Input.mapOptionalInputValue<List<Hl7SchemaConfig>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<Hl7SchemaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schematizedParsingType': ?pulumi.Input.mapOptionalInputValue<SchemaPackageSchematizedParsingType, String>(schematizedParsingType, (value) => value.wireValue),
      'types': ?pulumi.Input.mapOptionalInputValue<List<Hl7TypesConfig>, List<Map<String, dynamic>>>(types, (value) => pulumi.Input.encodeList<Hl7TypesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unexpectedSegmentHandling': ?pulumi.Input.mapOptionalInputValue<SchemaPackageUnexpectedSegmentHandling, String>(unexpectedSegmentHandling, (value) => value.wireValue),
    };
  }

  factory SchemaPackage.fromMap(Map<String, dynamic> map) {
    return SchemaPackage(
      ignoreMinOccurs: (() { final guardedValue = map['ignoreMinOccurs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Hl7SchemaConfig>(guardedValue, (value) => Hl7SchemaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schematizedParsingType: (() { final guardedValue = map['schematizedParsingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaPackageSchematizedParsingType.fromValue(guardedValue as String)); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Hl7TypesConfig>(guardedValue, (value) => Hl7TypesConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      unexpectedSegmentHandling: (() { final guardedValue = map['unexpectedSegmentHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaPackageUnexpectedSegmentHandling.fromValue(guardedValue as String)); })(),
    );
  }
}

