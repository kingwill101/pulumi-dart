// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'type.dart';
import 'version_source.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfig {
  /// The HL7v2 type definitions.
  final pulumi.Input<List<Type>>? type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final pulumi.Input<List<VersionSource>>? version;

  /// Creates a new [Hl7TypesConfig].
  /// [type] The HL7v2 type definitions.
  /// [version] The version selectors that this config applies to. A message must match ALL version sources to apply.
  Hl7TypesConfig({this.type, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            List<Type>,
            List<Map<String, dynamic>>
          >(
            type,
            (value) => pulumi.Input.encodeList<Type, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'version':
          ?pulumi.Input.mapOptionalInputValue<
            List<VersionSource>,
            List<Map<String, dynamic>>
          >(
            version,
            (value) =>
                pulumi.Input.encodeList<VersionSource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory Hl7TypesConfig.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfig(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Type>(
            guardedValue,
            (value) => Type.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VersionSource>(
            guardedValue,
            (value) =>
                VersionSource.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
