// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_artifactregistry_v1_remote_repository_config_apt_repository_public_repository_response.dart';

/// Configuration for an Apt remote repository.
class AptRepositoryResponse {
  /// One of the publicly available Apt repositories supported by Artifact Registry.
  final pulumi.Input<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse> publicRepository;

  /// Creates a new [AptRepositoryResponse].
  /// [publicRepository] One of the publicly available Apt repositories supported by Artifact Registry.
  const AptRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': pulumi.Input.mapInputValue<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse, Map<String, dynamic>>(publicRepository, (value) => value.toMap()),
    };
  }

  factory AptRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return AptRepositoryResponse(
      publicRepository: pulumi.Input.fromValue(GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryResponse.fromMap((map['publicRepository']! as Map).cast<String, dynamic>())),
    );
  }
}

