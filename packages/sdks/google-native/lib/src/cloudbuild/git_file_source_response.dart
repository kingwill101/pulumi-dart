// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitFileSource describes a file within a (possibly remote) code repository.
class GitFileSourceResponse {
  /// The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  final pulumi.Input<String> bitbucketServerConfig;
  /// The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  final pulumi.Input<String> githubEnterpriseConfig;
  /// The path of the file, with the repo root as the root of the path.
  final pulumi.Input<String> path;
  /// See RepoType above.
  final pulumi.Input<String> repoType;
  /// The fully qualified resource name of the Repos API repository. Either URI or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  final pulumi.Input<String> repository;
  /// The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
  final pulumi.Input<String> revision;
  /// The URI of the repo. Either uri or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  final pulumi.Input<String> uri;

  /// Creates a new [GitFileSourceResponse].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  /// [path] The path of the file, with the repo root as the root of the path.
  /// [repoType] See RepoType above.
  /// [repository] The fully qualified resource name of the Repos API repository. Either URI or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  /// [revision] The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
  /// [uri] The URI of the repo. Either uri or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  const GitFileSourceResponse({
    required this.bitbucketServerConfig,
    required this.githubEnterpriseConfig,
    required this.path,
    required this.repoType,
    required this.repository,
    required this.revision,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfig': bitbucketServerConfig,
      'githubEnterpriseConfig': githubEnterpriseConfig,
      'path': path,
      'repoType': repoType,
      'repository': repository,
      'revision': revision,
      'uri': uri,
    };
  }

  factory GitFileSourceResponse.fromMap(Map<String, dynamic> map) {
    return GitFileSourceResponse(
      bitbucketServerConfig: pulumi.Input.fromValue(map['bitbucketServerConfig'] as String),
      githubEnterpriseConfig: pulumi.Input.fromValue(map['githubEnterpriseConfig'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      repoType: pulumi.Input.fromValue(map['repoType'] as String),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
