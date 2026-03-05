// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_source_response_healthcare_v1beta1.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfigResponseHealthcareV1beta1 {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final pulumi.Input<Map<String, String>> messageSchemaConfigs;
  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final pulumi.Input<List<VersionSourceResponseHealthcareV1beta1>> version;

  /// Creates a new [Hl7SchemaConfigResponseHealthcareV1beta1].
  /// [messageSchemaConfigs] Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  /// [version] Each VersionSource is tested and only if they all match is the schema used for the message.
  Hl7SchemaConfigResponseHealthcareV1beta1({
    required this.messageSchemaConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageSchemaConfigs': messageSchemaConfigs,
      'version': pulumi.Input.mapInputValue<List<VersionSourceResponseHealthcareV1beta1>, List<Map<String, dynamic>>>(version, (value) => pulumi.Input.encodeList<VersionSourceResponseHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Hl7SchemaConfigResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return Hl7SchemaConfigResponseHealthcareV1beta1(
      messageSchemaConfigs: pulumi.Input.fromValue((map['messageSchemaConfigs'] as Map).cast<String, String>()),
      version: pulumi.Input.fromValue(pulumi.Input.decodeList<VersionSourceResponseHealthcareV1beta1>(map['version']!, (value) => VersionSourceResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

