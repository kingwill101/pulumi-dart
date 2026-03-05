// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_source_response.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfigResponse {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final pulumi.Input<Map<String, String>> messageSchemaConfigs;
  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final pulumi.Input<List<VersionSourceResponse>> version;

  /// Creates a new [Hl7SchemaConfigResponse].
  /// [messageSchemaConfigs] Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  /// [version] Each VersionSource is tested and only if they all match is the schema used for the message.
  Hl7SchemaConfigResponse({
    required this.messageSchemaConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageSchemaConfigs': messageSchemaConfigs,
      'version': pulumi.Input.mapInputValue<List<VersionSourceResponse>, List<Map<String, dynamic>>>(version, (value) => pulumi.Input.encodeList<VersionSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Hl7SchemaConfigResponse.fromMap(Map<String, dynamic> map) {
    return Hl7SchemaConfigResponse(
      messageSchemaConfigs: pulumi.Input.fromValue((map['messageSchemaConfigs'] as Map).cast<String, String>()),
      version: pulumi.Input.fromValue(pulumi.Input.decodeList<VersionSourceResponse>(map['version']!, (value) => VersionSourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

