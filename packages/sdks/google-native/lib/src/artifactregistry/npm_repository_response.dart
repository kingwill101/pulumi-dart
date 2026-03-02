// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a Npm remote repository.
class NpmRepositoryResponse {
  /// One of the publicly available Npm repositories supported by Artifact Registry.
  final pulumi.Input<String> publicRepository;

  /// Creates a new [NpmRepositoryResponse].
  /// [publicRepository] One of the publicly available Npm repositories supported by Artifact Registry.
  NpmRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': publicRepository,
    };
  }

  factory NpmRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return NpmRepositoryResponse(
      publicRepository: (map['publicRepository'] as String).input(),
    );
  }
}

