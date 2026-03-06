// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_containeranalysis_v1beta1.dart';

class ProvenanceBuilderContaineranalysisV1beta1 {
  final pulumi.Input<List<ResourceDescriptorContaineranalysisV1beta1>>? builderDependencies;
  final pulumi.Input<String>? id;
  final pulumi.Input<Map<String, String>>? version;

  /// Creates a new [ProvenanceBuilderContaineranalysisV1beta1].
  /// [builderDependencies] Optional.
  /// [id] Optional.
  /// [version] Optional.
  const ProvenanceBuilderContaineranalysisV1beta1({
    this.builderDependencies,
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderDependencies': ?pulumi.Input.mapOptionalInputValue<List<ResourceDescriptorContaineranalysisV1beta1>, List<Map<String, dynamic>>>(builderDependencies, (value) => pulumi.Input.encodeList<ResourceDescriptorContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'version': ?version,
    };
  }

  factory ProvenanceBuilderContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilderContaineranalysisV1beta1(
      builderDependencies: (() { final guardedValue = map['builderDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceDescriptorContaineranalysisV1beta1>(guardedValue, (value) => ResourceDescriptorContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

