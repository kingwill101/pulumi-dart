// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryRemoteRepositoryConfigCommonRepository {
  /// One of:
  /// a. Artifact Registry Repository resource, e.g. 'projects/UPSTREAM_PROJECT_ID/locations/REGION/repositories/UPSTREAM_REPOSITORY'
  /// b. URI to the registry, e.g. '"https://registry-1.docker.io"'
  /// c. URI to Artifact Registry Repository, e.g. '"https://REGION-docker.pkg.dev/UPSTREAM_PROJECT_ID/UPSTREAM_REPOSITORY"'
  final pulumi.Input<String> uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigCommonRepository].
  /// [uri] One of:
  GetRepositoryRemoteRepositoryConfigCommonRepository({required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory GetRepositoryRemoteRepositoryConfigCommonRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryRemoteRepositoryConfigCommonRepository(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
