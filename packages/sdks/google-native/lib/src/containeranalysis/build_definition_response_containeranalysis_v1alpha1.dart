// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response_containeranalysis_v1alpha1.dart';

class BuildDefinitionResponseContaineranalysisV1alpha1 {
  final pulumi.Input<String> buildType;
  final pulumi.Input<Map<String, String>> externalParameters;
  final pulumi.Input<Map<String, String>> internalParameters;
  final pulumi.Input<List<ResourceDescriptorResponseContaineranalysisV1alpha1>> resolvedDependencies;

  /// Creates a new [BuildDefinitionResponseContaineranalysisV1alpha1].
  /// [buildType] Required.
  /// [externalParameters] Required.
  /// [internalParameters] Required.
  /// [resolvedDependencies] Required.
  const BuildDefinitionResponseContaineranalysisV1alpha1({
    required this.buildType,
    required this.externalParameters,
    required this.internalParameters,
    required this.resolvedDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildType': buildType,
      'externalParameters': externalParameters,
      'internalParameters': internalParameters,
      'resolvedDependencies': pulumi.Input.mapInputValue<List<ResourceDescriptorResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(resolvedDependencies, (value) => pulumi.Input.encodeList<ResourceDescriptorResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BuildDefinitionResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return BuildDefinitionResponseContaineranalysisV1alpha1(
      buildType: pulumi.Input.fromValue(map['buildType'] as String),
      externalParameters: pulumi.Input.fromValue((map['externalParameters'] as Map).cast<String, String>()),
      internalParameters: pulumi.Input.fromValue((map['internalParameters'] as Map).cast<String, String>()),
      resolvedDependencies: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceDescriptorResponseContaineranalysisV1alpha1>(map['resolvedDependencies']!, (value) => ResourceDescriptorResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
