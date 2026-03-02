// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response.dart';

class BuildDefinitionResponse {
  final pulumi.Input<String> buildType;
  final pulumi.Input<Map<String, String>> externalParameters;
  final pulumi.Input<Map<String, String>> internalParameters;
  final pulumi.Input<List<ResourceDescriptorResponse>> resolvedDependencies;

  /// Creates a new [BuildDefinitionResponse].
  /// [buildType] Required.
  /// [externalParameters] Required.
  /// [internalParameters] Required.
  /// [resolvedDependencies] Required.
  BuildDefinitionResponse({
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
      'resolvedDependencies': pulumi.Input.mapInputValue<List<ResourceDescriptorResponse>, List<Map<String, dynamic>>>(resolvedDependencies, (value) => pulumi.Input.encodeList<ResourceDescriptorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BuildDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return BuildDefinitionResponse(
      buildType: (map['buildType'] as String).input(),
      externalParameters: ((map['externalParameters'] as Map).cast<String, String>()).input(),
      internalParameters: ((map['internalParameters'] as Map).cast<String, String>()).input(),
      resolvedDependencies: (pulumi.Input.decodeList<ResourceDescriptorResponse>(map['resolvedDependencies'], (value) => ResourceDescriptorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

