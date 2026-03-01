// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response.dart';

class ProvenanceBuilderResponse {
  final List<ResourceDescriptorResponse> builderDependencies;
  final Map<String, String> version;

  /// Creates a new [ProvenanceBuilderResponse].
  /// [builderDependencies] Required.
  /// [version] Required.
  ProvenanceBuilderResponse({
    required this.builderDependencies,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderDependencies': pulumi.Input.encodeList<ResourceDescriptorResponse, Map<String, dynamic>>(builderDependencies, (value) => value.toMap()),
      'version': version,
    };
  }

  factory ProvenanceBuilderResponse.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilderResponse(
      builderDependencies: pulumi.Input.decodeList<ResourceDescriptorResponse>(map['builderDependencies'], (value) => ResourceDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())),
      version: (map['version'] as Map).cast<String, String>(),
    );
  }
}

