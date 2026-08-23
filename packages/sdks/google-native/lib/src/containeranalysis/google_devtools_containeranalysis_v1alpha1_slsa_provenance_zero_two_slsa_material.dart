// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial {
  /// Collection of cryptographic digests for the contents of this artifact.
  final pulumi.Input<Map<String, String>>? digest;
  /// The method by which this artifact was referenced during the build.
  final pulumi.Input<String>? uri;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial].
  /// [digest] Collection of cryptographic digests for the contents of this artifact.
  /// [uri] The method by which this artifact was referenced during the build.
  const GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial({
    this.digest,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'uri': ?uri,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
