// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse {
  /// Collection of cryptographic digests for the contents of this artifact.
  final pulumi.Input<Map<String, String>> digest;
  /// The method by which this artifact was referenced during the build.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse].
  /// [digest] Collection of cryptographic digests for the contents of this artifact.
  /// [uri] The method by which this artifact was referenced during the build.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse({
    required this.digest,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'uri': uri,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse(
      digest: ((map['digest'] as Map).cast<String, String>()).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

