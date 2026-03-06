// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerGitFileSource {
  /// The full resource name of the bitbucket server config.
  /// Format: projects/{project}/locations/{location}/bitbucketServerConfigs/{id}.
  final pulumi.Input<String>? bitbucketServerConfig;
  /// The full resource name of the github enterprise config.
  /// Format: projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}. projects/{project}/githubEnterpriseConfigs/{id}.
  final pulumi.Input<String>? githubEnterpriseConfig;
  /// The path of the file, with the repo root as the root of the path.
  final pulumi.Input<String> path;
  /// The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER
  /// Possible values are: `UNKNOWN`, `CLOUD_SOURCE_REPOSITORIES`, `GITHUB`, `BITBUCKET_SERVER`.
  final pulumi.Input<String> repoType;
  /// The fully qualified resource name of the Repo API repository. The fully qualified resource name of the Repo API repository.
  /// If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  final pulumi.Input<String>? repository;
  /// The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the
  /// filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions
  /// If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
  final pulumi.Input<String>? revision;
  /// The URI of the repo (optional). If unspecified, the repo from which the trigger
  /// invocation originated is assumed to be the repo from which to read the specified path.
  final pulumi.Input<String>? uri;

  /// Creates a new [TriggerGitFileSource].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config.
  /// [path] The path of the file, with the repo root as the root of the path.
  /// [repoType] The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// [repository] The fully qualified resource name of the Repo API repository. The fully qualified resource name of the Repo API repository.
  /// [revision] The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the
  /// [uri] The URI of the repo (optional). If unspecified, the repo from which the trigger
  const TriggerGitFileSource({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    required this.path,
    required this.repoType,
    this.repository,
    this.revision,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfig': ?bitbucketServerConfig,
      'githubEnterpriseConfig': ?githubEnterpriseConfig,
      'path': path,
      'repoType': repoType,
      'repository': ?repository,
      'revision': ?revision,
      'uri': ?uri,
    };
  }

  factory TriggerGitFileSource.fromMap(Map<String, dynamic> map) {
    return TriggerGitFileSource(
      bitbucketServerConfig: (() { final guardedValue = map['bitbucketServerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      githubEnterpriseConfig: (() { final guardedValue = map['githubEnterpriseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      repoType: pulumi.Input.fromValue(map['repoType'] as String),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

