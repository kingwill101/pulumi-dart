// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_config_version_healthcare_v1beta1.dart';
import 'schema_package_healthcare_v1beta1.dart';

/// The configuration for the parser. It determines how the server parses the messages.
class ParserConfigHealthcareV1beta1 {
  /// Determines whether messages with no header are allowed.
  final pulumi.Input<bool>? allowNullHeader;

  /// Schemas used to parse messages in this store, if schematized parsing is desired.
  final pulumi.Input<SchemaPackageHealthcareV1beta1>? schema;

  /// Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  final pulumi.Input<String>? segmentTerminator;

  /// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  final pulumi.Input<ParserConfigVersionHealthcareV1beta1>? version;

  /// Creates a new [ParserConfigHealthcareV1beta1].
  /// [allowNullHeader] Determines whether messages with no header are allowed.
  /// [schema] Schemas used to parse messages in this store, if schematized parsing is desired.
  /// [segmentTerminator] Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  /// [version] Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  ParserConfigHealthcareV1beta1({
    this.allowNullHeader,
    this.schema,
    this.segmentTerminator,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNullHeader': ?allowNullHeader,
      'schema':
          ?pulumi.Input.mapOptionalInputValue<
            SchemaPackageHealthcareV1beta1,
            Map<String, dynamic>
          >(schema, (value) => value.toMap()),
      'segmentTerminator': ?segmentTerminator,
      'version':
          ?pulumi.Input.mapOptionalInputValue<
            ParserConfigVersionHealthcareV1beta1,
            String
          >(version, (value) => value.wireValue),
    };
  }

  factory ParserConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return ParserConfigHealthcareV1beta1(
      allowNullHeader: (() {
        final guardedValue = map['allowNullHeader'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SchemaPackageHealthcareV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      segmentTerminator: (() {
        final guardedValue = map['segmentTerminator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ParserConfigVersionHealthcareV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
