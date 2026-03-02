// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Material is a material used in the generation of the provenance
class MaterialContaineranalysisV1alpha1 {
  /// digest is a map from a hash algorithm (e.g. sha256) to the value in the material
  final pulumi.Input<Map<String, String>>? digest;
  /// uri is the uri of the material
  final pulumi.Input<String>? uri;

  /// Creates a new [MaterialContaineranalysisV1alpha1].
  /// [digest] digest is a map from a hash algorithm (e.g. sha256) to the value in the material
  /// [uri] uri is the uri of the material
  MaterialContaineranalysisV1alpha1({
    this.digest,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'uri': ?uri,
    };
  }

  factory MaterialContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return MaterialContaineranalysisV1alpha1(
      digest: map['digest'] == null ? null : ((map['digest'] as Map).cast<String, String>()).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

