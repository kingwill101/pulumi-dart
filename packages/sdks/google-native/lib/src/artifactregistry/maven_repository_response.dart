// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a Maven remote repository.
class MavenRepositoryResponse {
  /// One of the publicly available Maven repositories supported by Artifact Registry.
  final pulumi.Input<String> publicRepository;

  /// Creates a new [MavenRepositoryResponse].
  /// [publicRepository] One of the publicly available Maven repositories supported by Artifact Registry.
  const MavenRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': publicRepository,
    };
  }

  factory MavenRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryResponse(
      publicRepository: pulumi.Input.fromValue(map['publicRepository'] as String),
    );
  }
}
