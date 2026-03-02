// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_file_source_repo_type.dart';

/// GitFileSource describes a file within a (possibly remote) code repository.
class GitFileSource {
  /// The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  final pulumi.Input<String>? bitbucketServerConfig;
  /// The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  final pulumi.Input<String>? githubEnterpriseConfig;
  /// The path of the file, with the repo root as the root of the path.
  final pulumi.Input<String>? path;
  /// See RepoType above.
  final pulumi.Input<GitFileSourceRepoType>? repoType;
  /// The fully qualified resource name of the Repos API repository. Either URI or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  final pulumi.Input<String>? repository;
  /// The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
  final pulumi.Input<String>? revision;
  /// The URI of the repo. Either uri or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  final pulumi.Input<String>? uri;

  /// Creates a new [GitFileSource].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  /// [path] The path of the file, with the repo root as the root of the path.
  /// [repoType] See RepoType above.
  /// [repository] The fully qualified resource name of the Repos API repository. Either URI or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  /// [revision] The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
  /// [uri] The URI of the repo. Either uri or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  GitFileSource({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    this.path,
    this.repoType,
    this.repository,
    this.revision,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfig': ?bitbucketServerConfig,
      'githubEnterpriseConfig': ?githubEnterpriseConfig,
      'path': ?path,
      'repoType': ?pulumi.Input.mapOptionalInputValue<GitFileSourceRepoType, String>(repoType, (value) => value.value),
      'repository': ?repository,
      'revision': ?revision,
      'uri': ?uri,
    };
  }

  factory GitFileSource.fromMap(Map<String, dynamic> map) {
    return GitFileSource(
      bitbucketServerConfig: map['bitbucketServerConfig'] == null ? null : (map['bitbucketServerConfig']! as String).input(),
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null ? null : (map['githubEnterpriseConfig']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      repoType: map['repoType'] == null ? null : (GitFileSourceRepoType.fromValue(map['repoType']! as String)).input(),
      repository: map['repository'] == null ? null : (map['repository']! as String).input(),
      revision: map['revision'] == null ? null : (map['revision']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

