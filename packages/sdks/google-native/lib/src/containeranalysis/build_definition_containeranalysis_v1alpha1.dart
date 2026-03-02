// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_containeranalysis_v1alpha1.dart';

class BuildDefinitionContaineranalysisV1alpha1 {
  final pulumi.Input<String>? buildType;
  final pulumi.Input<Map<String, String>>? externalParameters;
  final pulumi.Input<Map<String, String>>? internalParameters;
  final pulumi.Input<List<ResourceDescriptorContaineranalysisV1alpha1>>? resolvedDependencies;

  /// Creates a new [BuildDefinitionContaineranalysisV1alpha1].
  /// [buildType] Optional.
  /// [externalParameters] Optional.
  /// [internalParameters] Optional.
  /// [resolvedDependencies] Optional.
  BuildDefinitionContaineranalysisV1alpha1({
    this.buildType,
    this.externalParameters,
    this.internalParameters,
    this.resolvedDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildType': ?buildType,
      'externalParameters': ?externalParameters,
      'internalParameters': ?internalParameters,
      'resolvedDependencies': ?pulumi.Input.mapOptionalInputValue<List<ResourceDescriptorContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(resolvedDependencies, (value) => pulumi.Input.encodeList<ResourceDescriptorContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BuildDefinitionContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return BuildDefinitionContaineranalysisV1alpha1(
      buildType: map['buildType'] == null ? null : (map['buildType']! as String).input(),
      externalParameters: map['externalParameters'] == null ? null : ((map['externalParameters']! as Map).cast<String, String>()).input(),
      internalParameters: map['internalParameters'] == null ? null : ((map['internalParameters']! as Map).cast<String, String>()).input(),
      resolvedDependencies: map['resolvedDependencies'] == null ? null : (pulumi.Input.decodeList<ResourceDescriptorContaineranalysisV1alpha1>(map['resolvedDependencies']!, (value) => ResourceDescriptorContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

