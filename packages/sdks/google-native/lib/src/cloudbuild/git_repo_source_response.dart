// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitRepoSource describes a repo and ref of a code repository.
class GitRepoSourceResponse {
  /// The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  final pulumi.Input<String> bitbucketServerConfig;
  /// The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  final pulumi.Input<String> githubEnterpriseConfig;
  /// The branch or tag to use. Must start with "refs/" (required).
  final pulumi.Input<String> ref;
  /// See RepoType below.
  final pulumi.Input<String> repoType;
  /// The connected repository resource name, in the format `projects/*/locations/*/connections/*/repositories/*`. Either `uri` or `repository` can be specified and is required.
  final pulumi.Input<String> repository;
  /// The URI of the repo (e.g. https://github.com/user/repo.git). Either `uri` or `repository` can be specified and is required.
  final pulumi.Input<String> uri;

  /// Creates a new [GitRepoSourceResponse].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  /// [ref] The branch or tag to use. Must start with "refs/" (required).
  /// [repoType] See RepoType below.
  /// [repository] The connected repository resource name, in the format `projects/*/locations/*/connections/*/repositories/*`. Either `uri` or `repository` can be specified and is required.
  /// [uri] The URI of the repo (e.g. https://github.com/user/repo.git). Either `uri` or `repository` can be specified and is required.
  const GitRepoSourceResponse({
    required this.bitbucketServerConfig,
    required this.githubEnterpriseConfig,
    required this.ref,
    required this.repoType,
    required this.repository,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfig': bitbucketServerConfig,
      'githubEnterpriseConfig': githubEnterpriseConfig,
      'ref': ref,
      'repoType': repoType,
      'repository': repository,
      'uri': uri,
    };
  }

  factory GitRepoSourceResponse.fromMap(Map<String, dynamic> map) {
    return GitRepoSourceResponse(
      bitbucketServerConfig: pulumi.Input.fromValue(map['bitbucketServerConfig'] as String),
      githubEnterpriseConfig: pulumi.Input.fromValue(map['githubEnterpriseConfig'] as String),
      ref: pulumi.Input.fromValue(map['ref'] as String),
      repoType: pulumi.Input.fromValue(map['repoType'] as String),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
