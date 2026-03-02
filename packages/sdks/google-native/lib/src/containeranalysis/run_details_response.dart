// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata_response.dart';
import 'provenance_builder_response.dart';
import 'resource_descriptor_response.dart';

class RunDetailsResponse {
  final pulumi.Input<ProvenanceBuilderResponse> builder;
  final pulumi.Input<List<ResourceDescriptorResponse>> byproducts;
  final pulumi.Input<BuildMetadataResponse> metadata;

  /// Creates a new [RunDetailsResponse].
  /// [builder] Required.
  /// [byproducts] Required.
  /// [metadata] Required.
  RunDetailsResponse({
    required this.builder,
    required this.byproducts,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': pulumi.Input.mapInputValue<ProvenanceBuilderResponse, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'byproducts': pulumi.Input.mapInputValue<List<ResourceDescriptorResponse>, List<Map<String, dynamic>>>(byproducts, (value) => pulumi.Input.encodeList<ResourceDescriptorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': pulumi.Input.mapInputValue<BuildMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory RunDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RunDetailsResponse(
      builder: (ProvenanceBuilderResponse.fromMap((map['builder'] as Map).cast<String, dynamic>())).input(),
      byproducts: (pulumi.Input.decodeList<ResourceDescriptorResponse>(map['byproducts'], (value) => ResourceDescriptorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: (BuildMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

