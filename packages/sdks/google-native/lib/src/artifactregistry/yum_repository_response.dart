// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_artifactregistry_v1_remote_repository_config_yum_repository_public_repository_response.dart';

/// Configuration for a Yum remote repository.
class YumRepositoryResponse {
  /// One of the publicly available Yum repositories supported by Artifact Registry.
  final pulumi.Input<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse> publicRepository;

  /// Creates a new [YumRepositoryResponse].
  /// [publicRepository] One of the publicly available Yum repositories supported by Artifact Registry.
  const YumRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': pulumi.Input.mapInputValue<GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse, Map<String, dynamic>>(publicRepository, (value) => value.toMap()),
    };
  }

  factory YumRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return YumRepositoryResponse(
      publicRepository: pulumi.Input.fromValue(GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse.fromMap((map['publicRepository']! as Map).cast<String, dynamic>())),
    );
  }
}

