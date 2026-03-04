// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_builder.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_invocation.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_material.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_metadata.dart';

/// See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwo {
  final pulumi.Input<Map<String, String>>? buildConfig;
  final pulumi.Input<String>? buildType;
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder>? builder;
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation>? invocation;
  final pulumi.Input<List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>>?
  materials;
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata>? metadata;

  /// Creates a new [SlsaProvenanceZeroTwo].
  /// [buildConfig] Optional.
  /// [buildType] Optional.
  /// [builder] Optional.
  /// [invocation] Optional.
  /// [materials] Optional.
  /// [metadata] Optional.
  SlsaProvenanceZeroTwo({
    this.buildConfig,
    this.buildType,
    this.builder,
    this.invocation,
    this.materials,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': ?buildConfig,
      'buildType': ?buildType,
      'builder':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder,
            Map<String, dynamic>
          >(builder, (value) => value.toMap()),
      'invocation':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation,
            Map<String, dynamic>
          >(invocation, (value) => value.toMap()),
      'materials':
          ?pulumi.Input.mapOptionalInputValue<
            List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>,
            List<Map<String, dynamic>>
          >(
            materials,
            (value) =>
                pulumi.Input.encodeList<
                  GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceZeroTwo.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwo(
      buildConfig: (() {
        final guardedValue = map['buildConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      buildType: (() {
        final guardedValue = map['buildType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      builder: (() {
        final guardedValue = map['builder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      invocation: (() {
        final guardedValue = map['invocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      materials: (() {
        final guardedValue = map['materials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>(
            guardedValue,
            (value) => GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
