// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerSourceToBuild {
  /// The full resource name of the bitbucket server config.
  /// Format: projects/{project}/locations/{location}/bitbucketServerConfigs/{id}.
  final pulumi.Input<String>? bitbucketServerConfig;
  /// The full resource name of the github enterprise config.
  /// Format: projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}. projects/{project}/githubEnterpriseConfigs/{id}.
  final pulumi.Input<String>? githubEnterpriseConfig;
  /// The branch or tag to use. Must start with "refs/" (required).
  final pulumi.Input<String> ref;
  /// The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER
  /// Possible values are: `UNKNOWN`, `CLOUD_SOURCE_REPOSITORIES`, `GITHUB`, `BITBUCKET_SERVER`.
  final pulumi.Input<String> repoType;
  /// The qualified resource name of the Repo API repository.
  /// Either uri or repository can be specified and is required.
  final pulumi.Input<String>? repository;
  /// The URI of the repo.
  final pulumi.Input<String>? uri;

  /// Creates a new [TriggerSourceToBuild].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config.
  /// [ref] The branch or tag to use. Must start with "refs/" (required).
  /// [repoType] The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// [repository] The qualified resource name of the Repo API repository.
  /// [uri] The URI of the repo.
  TriggerSourceToBuild({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    required this.ref,
    required this.repoType,
    this.repository,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfig': ?bitbucketServerConfig,
      'githubEnterpriseConfig': ?githubEnterpriseConfig,
      'ref': ref,
      'repoType': repoType,
      'repository': ?repository,
      'uri': ?uri,
    };
  }

  factory TriggerSourceToBuild.fromMap(Map<String, dynamic> map) {
    return TriggerSourceToBuild(
      bitbucketServerConfig: map['bitbucketServerConfig'] == null ? null : (map['bitbucketServerConfig']! as String).input(),
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null ? null : (map['githubEnterpriseConfig']! as String).input(),
      ref: (map['ref'] as String).input(),
      repoType: (map['repoType'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

