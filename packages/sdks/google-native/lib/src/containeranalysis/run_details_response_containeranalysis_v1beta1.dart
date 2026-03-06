// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata_response_containeranalysis_v1beta1.dart';
import 'provenance_builder_response_containeranalysis_v1beta1.dart';
import 'resource_descriptor_response_containeranalysis_v1beta1.dart';

class RunDetailsResponseContaineranalysisV1beta1 {
  final pulumi.Input<ProvenanceBuilderResponseContaineranalysisV1beta1> builder;
  final pulumi.Input<List<ResourceDescriptorResponseContaineranalysisV1beta1>> byproducts;
  final pulumi.Input<BuildMetadataResponseContaineranalysisV1beta1> metadata;

  /// Creates a new [RunDetailsResponseContaineranalysisV1beta1].
  /// [builder] Required.
  /// [byproducts] Required.
  /// [metadata] Required.
  const RunDetailsResponseContaineranalysisV1beta1({
    required this.builder,
    required this.byproducts,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': pulumi.Input.mapInputValue<ProvenanceBuilderResponseContaineranalysisV1beta1, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'byproducts': pulumi.Input.mapInputValue<List<ResourceDescriptorResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(byproducts, (value) => pulumi.Input.encodeList<ResourceDescriptorResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': pulumi.Input.mapInputValue<BuildMetadataResponseContaineranalysisV1beta1, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory RunDetailsResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RunDetailsResponseContaineranalysisV1beta1(
      builder: pulumi.Input.fromValue(ProvenanceBuilderResponseContaineranalysisV1beta1.fromMap((map['builder']! as Map).cast<String, dynamic>())),
      byproducts: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceDescriptorResponseContaineranalysisV1beta1>(map['byproducts']!, (value) => ResourceDescriptorResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      metadata: pulumi.Input.fromValue(BuildMetadataResponseContaineranalysisV1beta1.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
    );
  }
}

