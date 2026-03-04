// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response_containeranalysis_v1alpha1.dart';

class ProvenanceBuilderResponseContaineranalysisV1alpha1 {
  final pulumi.Input<List<ResourceDescriptorResponseContaineranalysisV1alpha1>>
  builderDependencies;
  final pulumi.Input<Map<String, String>> version;

  /// Creates a new [ProvenanceBuilderResponseContaineranalysisV1alpha1].
  /// [builderDependencies] Required.
  /// [version] Required.
  ProvenanceBuilderResponseContaineranalysisV1alpha1({
    required this.builderDependencies,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderDependencies':
          pulumi.Input.mapInputValue<
            List<ResourceDescriptorResponseContaineranalysisV1alpha1>,
            List<Map<String, dynamic>>
          >(
            builderDependencies,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceDescriptorResponseContaineranalysisV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version': version,
    };
  }

  factory ProvenanceBuilderResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProvenanceBuilderResponseContaineranalysisV1alpha1(
      builderDependencies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          ResourceDescriptorResponseContaineranalysisV1alpha1
        >(
          map['builderDependencies']!,
          (value) =>
              ResourceDescriptorResponseContaineranalysisV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      version: pulumi.Input.fromValue(
        (map['version'] as Map).cast<String, String>(),
      ),
    );
  }
}
