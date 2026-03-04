// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'type_healthcare_v1beta1.dart';
import 'version_source_healthcare_v1beta1.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfigHealthcareV1beta1 {
  /// The HL7v2 type definitions.
  final pulumi.Input<List<TypeHealthcareV1beta1>>? type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final pulumi.Input<List<VersionSourceHealthcareV1beta1>>? version;

  /// Creates a new [Hl7TypesConfigHealthcareV1beta1].
  /// [type] The HL7v2 type definitions.
  /// [version] The version selectors that this config applies to. A message must match ALL version sources to apply.
  Hl7TypesConfigHealthcareV1beta1({this.type, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            List<TypeHealthcareV1beta1>,
            List<Map<String, dynamic>>
          >(
            type,
            (value) =>
                pulumi.Input.encodeList<
                  TypeHealthcareV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version':
          ?pulumi.Input.mapOptionalInputValue<
            List<VersionSourceHealthcareV1beta1>,
            List<Map<String, dynamic>>
          >(
            version,
            (value) =>
                pulumi.Input.encodeList<
                  VersionSourceHealthcareV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory Hl7TypesConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfigHealthcareV1beta1(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TypeHealthcareV1beta1>(
            guardedValue,
            (value) => TypeHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VersionSourceHealthcareV1beta1>(
            guardedValue,
            (value) => VersionSourceHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
