// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_invocation_response.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_material_response.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_metadata_response.dart';

/// See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwoResponse {
  final pulumi.Input<Map<String, String>> buildConfig;
  final pulumi.Input<String> buildType;
  final pulumi.Input<Map<String, dynamic>> builder;
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse> invocation;
  final pulumi.Input<List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse>> materials;
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse> metadata;

  /// Creates a new [SlsaProvenanceZeroTwoResponse].
  /// [buildConfig] Required.
  /// [buildType] Required.
  /// [builder] Required.
  /// [invocation] Required.
  /// [materials] Required.
  /// [metadata] Required.
  const SlsaProvenanceZeroTwoResponse({
    required this.buildConfig,
    required this.buildType,
    required this.builder,
    required this.invocation,
    required this.materials,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': buildConfig,
      'buildType': buildType,
      'builder': builder,
      'invocation': pulumi.Input.mapInputValue<GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse, Map<String, dynamic>>(invocation, (value) => value.toMap()),
      'materials': pulumi.Input.mapInputValue<List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse>, List<Map<String, dynamic>>>(materials, (value) => pulumi.Input.encodeList<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': pulumi.Input.mapInputValue<GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceZeroTwoResponse.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwoResponse(
      buildConfig: pulumi.Input.fromValue((map['buildConfig'] as Map).cast<String, String>()),
      buildType: pulumi.Input.fromValue(map['buildType'] as String),
      builder: pulumi.Input.fromValue((map['builder']! as Map).cast<String, dynamic>()),
      invocation: pulumi.Input.fromValue(GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse.fromMap((map['invocation']! as Map).cast<String, dynamic>())),
      materials: pulumi.Input.fromValue(pulumi.Input.decodeList<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse>(map['materials']!, (value) => GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse.fromMap((value as Map).cast<String, dynamic>()))),
      metadata: pulumi.Input.fromValue(GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
    );
  }
}
