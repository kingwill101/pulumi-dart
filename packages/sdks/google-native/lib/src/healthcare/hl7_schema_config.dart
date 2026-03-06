// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_source.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfig {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final pulumi.Input<Map<String, String>>? messageSchemaConfigs;
  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final pulumi.Input<List<VersionSource>>? version;

  /// Creates a new [Hl7SchemaConfig].
  /// [messageSchemaConfigs] Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  /// [version] Each VersionSource is tested and only if they all match is the schema used for the message.
  const Hl7SchemaConfig({
    this.messageSchemaConfigs,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageSchemaConfigs': ?messageSchemaConfigs,
      'version': ?pulumi.Input.mapOptionalInputValue<List<VersionSource>, List<Map<String, dynamic>>>(version, (value) => pulumi.Input.encodeList<VersionSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Hl7SchemaConfig.fromMap(Map<String, dynamic> map) {
    return Hl7SchemaConfig(
      messageSchemaConfigs: (() { final guardedValue = map['messageSchemaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VersionSource>(guardedValue, (value) => VersionSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

