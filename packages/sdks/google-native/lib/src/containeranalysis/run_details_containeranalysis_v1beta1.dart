// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata_containeranalysis_v1beta1.dart';
import 'provenance_builder_containeranalysis_v1beta1.dart';
import 'resource_descriptor_containeranalysis_v1beta1.dart';

class RunDetailsContaineranalysisV1beta1 {
  final pulumi.Input<ProvenanceBuilderContaineranalysisV1beta1>? builder;
  final pulumi.Input<List<ResourceDescriptorContaineranalysisV1beta1>>? byproducts;
  final pulumi.Input<BuildMetadataContaineranalysisV1beta1>? metadata;

  /// Creates a new [RunDetailsContaineranalysisV1beta1].
  /// [builder] Optional.
  /// [byproducts] Optional.
  /// [metadata] Optional.
  const RunDetailsContaineranalysisV1beta1({
    this.builder,
    this.byproducts,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?pulumi.Input.mapOptionalInputValue<ProvenanceBuilderContaineranalysisV1beta1, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'byproducts': ?pulumi.Input.mapOptionalInputValue<List<ResourceDescriptorContaineranalysisV1beta1>, List<Map<String, dynamic>>>(byproducts, (value) => pulumi.Input.encodeList<ResourceDescriptorContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<BuildMetadataContaineranalysisV1beta1, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory RunDetailsContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RunDetailsContaineranalysisV1beta1(
      builder: (() { final guardedValue = map['builder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvenanceBuilderContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      byproducts: (() { final guardedValue = map['byproducts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceDescriptorContaineranalysisV1beta1>(guardedValue, (value) => ResourceDescriptorContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildMetadataContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
