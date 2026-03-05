// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_schema_config_healthcare_v1beta1.dart';
import 'hl7_types_config_healthcare_v1beta1.dart';
import 'schema_package_schematized_parsing_type_healthcare_v1beta1.dart';
import 'schema_package_unexpected_segment_handling_healthcare_v1beta1.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackageHealthcareV1beta1 {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final pulumi.Input<bool>? ignoreMinOccurs;
  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final pulumi.Input<List<Hl7SchemaConfigHealthcareV1beta1>>? schemas;
  /// Determines how messages that fail to parse are handled.
  final pulumi.Input<SchemaPackageSchematizedParsingTypeHealthcareV1beta1>? schematizedParsingType;
  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final pulumi.Input<List<Hl7TypesConfigHealthcareV1beta1>>? types;
  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final pulumi.Input<SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1>? unexpectedSegmentHandling;

  /// Creates a new [SchemaPackageHealthcareV1beta1].
  /// [ignoreMinOccurs] Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  /// [schemas] Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  /// [schematizedParsingType] Determines how messages that fail to parse are handled.
  /// [types] Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  /// [unexpectedSegmentHandling] Determines how unexpected segments (segments not matched to the schema) are handled.
  SchemaPackageHealthcareV1beta1({
    this.ignoreMinOccurs,
    this.schemas,
    this.schematizedParsingType,
    this.types,
    this.unexpectedSegmentHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMinOccurs': ?ignoreMinOccurs,
      'schemas': ?pulumi.Input.mapOptionalInputValue<List<Hl7SchemaConfigHealthcareV1beta1>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<Hl7SchemaConfigHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schematizedParsingType': ?pulumi.Input.mapOptionalInputValue<SchemaPackageSchematizedParsingTypeHealthcareV1beta1, String>(schematizedParsingType, (value) => value.wireValue),
      'types': ?pulumi.Input.mapOptionalInputValue<List<Hl7TypesConfigHealthcareV1beta1>, List<Map<String, dynamic>>>(types, (value) => pulumi.Input.encodeList<Hl7TypesConfigHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unexpectedSegmentHandling': ?pulumi.Input.mapOptionalInputValue<SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1, String>(unexpectedSegmentHandling, (value) => value.wireValue),
    };
  }

  factory SchemaPackageHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SchemaPackageHealthcareV1beta1(
      ignoreMinOccurs: (() { final guardedValue = map['ignoreMinOccurs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Hl7SchemaConfigHealthcareV1beta1>(guardedValue, (value) => Hl7SchemaConfigHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schematizedParsingType: (() { final guardedValue = map['schematizedParsingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaPackageSchematizedParsingTypeHealthcareV1beta1.fromValue(guardedValue as String)); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Hl7TypesConfigHealthcareV1beta1>(guardedValue, (value) => Hl7TypesConfigHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      unexpectedSegmentHandling: (() { final guardedValue = map['unexpectedSegmentHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

