// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a hash object for use in Materials and Products.
class ArtifactHashesResponse {
  final pulumi.Input<String> sha256;

  /// Creates a new [ArtifactHashesResponse].
  /// [sha256] Required.
  const ArtifactHashesResponse({
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256': sha256,
    };
  }

  factory ArtifactHashesResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactHashesResponse(
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
    );
  }
}
