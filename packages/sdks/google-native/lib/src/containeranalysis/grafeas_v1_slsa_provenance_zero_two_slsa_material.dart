// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial {
  final pulumi.Input<Map<String, String>>? digest;
  final pulumi.Input<String>? uri;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial].
  /// [digest] Optional.
  /// [uri] Optional.
  GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial({
    this.digest,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'uri': ?uri,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(
      digest: map['digest'] == null ? null : ((map['digest'] as Map).cast<String, String>()).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

