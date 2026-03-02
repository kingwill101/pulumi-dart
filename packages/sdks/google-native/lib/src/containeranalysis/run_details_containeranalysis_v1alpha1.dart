// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata_containeranalysis_v1alpha1.dart';
import 'provenance_builder_containeranalysis_v1alpha1.dart';
import 'resource_descriptor_containeranalysis_v1alpha1.dart';

class RunDetailsContaineranalysisV1alpha1 {
  final pulumi.Input<ProvenanceBuilderContaineranalysisV1alpha1>? builder;
  final pulumi.Input<List<ResourceDescriptorContaineranalysisV1alpha1>>? byproducts;
  final pulumi.Input<BuildMetadataContaineranalysisV1alpha1>? metadata;

  /// Creates a new [RunDetailsContaineranalysisV1alpha1].
  /// [builder] Optional.
  /// [byproducts] Optional.
  /// [metadata] Optional.
  RunDetailsContaineranalysisV1alpha1({
    this.builder,
    this.byproducts,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?pulumi.Input.mapOptionalInputValue<ProvenanceBuilderContaineranalysisV1alpha1, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'byproducts': ?pulumi.Input.mapOptionalInputValue<List<ResourceDescriptorContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(byproducts, (value) => pulumi.Input.encodeList<ResourceDescriptorContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<BuildMetadataContaineranalysisV1alpha1, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory RunDetailsContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return RunDetailsContaineranalysisV1alpha1(
      builder: map['builder'] == null ? null : (ProvenanceBuilderContaineranalysisV1alpha1.fromMap((map['builder'] as Map).cast<String, dynamic>())).input(),
      byproducts: map['byproducts'] == null ? null : (pulumi.Input.decodeList<ResourceDescriptorContaineranalysisV1alpha1>(map['byproducts'], (value) => ResourceDescriptorContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : (BuildMetadataContaineranalysisV1alpha1.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

