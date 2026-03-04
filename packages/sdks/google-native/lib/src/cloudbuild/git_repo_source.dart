// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_repo_source_repo_type.dart';

/// GitRepoSource describes a repo and ref of a code repository.
class GitRepoSource {
  /// The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  final pulumi.Input<String>? bitbucketServerConfig;

  /// The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  final pulumi.Input<String>? githubEnterpriseConfig;

  /// The branch or tag to use. Must start with "refs/" (required).
  final pulumi.Input<String>? ref;

  /// See RepoType below.
  final pulumi.Input<GitRepoSourceRepoType>? repoType;

  /// The connected repository resource name, in the format `projects/*/locations/*/connections/*/repositories/*`. Either `uri` or `repository` can be specified and is required.
  final pulumi.Input<String>? repository;

  /// The URI of the repo (e.g. https://github.com/user/repo.git). Either `uri` or `repository` can be specified and is required.
  final pulumi.Input<String>? uri;

  /// Creates a new [GitRepoSource].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  /// [ref] The branch or tag to use. Must start with "refs/" (required).
  /// [repoType] See RepoType below.
  /// [repository] The connected repository resource name, in the format `projects/*/locations/*/connections/*/repositories/*`. Either `uri` or `repository` can be specified and is required.
  /// [uri] The URI of the repo (e.g. https://github.com/user/repo.git). Either `uri` or `repository` can be specified and is required.
  GitRepoSource({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    this.ref,
    this.repoType,
    this.repository,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfig': ?bitbucketServerConfig,
      'githubEnterpriseConfig': ?githubEnterpriseConfig,
      'ref': ?ref,
      'repoType':
          ?pulumi.Input.mapOptionalInputValue<GitRepoSourceRepoType, String>(
            repoType,
            (value) => value.wireValue,
          ),
      'repository': ?repository,
      'uri': ?uri,
    };
  }

  factory GitRepoSource.fromMap(Map<String, dynamic> map) {
    return GitRepoSource(
      bitbucketServerConfig: (() {
        final guardedValue = map['bitbucketServerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      githubEnterpriseConfig: (() {
        final guardedValue = map['githubEnterpriseConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ref: (() {
        final guardedValue = map['ref'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoType: (() {
        final guardedValue = map['repoType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GitRepoSourceRepoType.fromValue(guardedValue as String),
        );
      })(),
      repository: (() {
        final guardedValue = map['repository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
