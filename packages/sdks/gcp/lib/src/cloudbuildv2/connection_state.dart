// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bitbucket_cloud_config.dart';
import 'connection_bitbucket_data_center_config.dart';
import 'connection_github_config.dart';
import 'connection_github_enterprise_config.dart';
import 'connection_gitlab_config.dart';
import 'connection_installation_state.dart';

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configuration for connections to Bitbucket Cloud.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketCloudConfig>? bitbucketCloudConfig;
  /// Configuration for connections to Bitbucket Data Center.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfig>? bitbucketDataCenterConfig;
  /// Output only. Server assigned timestamp for when the connection was created.
  final pulumi.Input<String>? createTime;
  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final pulumi.Input<bool>? disabled;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Configuration for connections to github.com.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubConfig>? githubConfig;
  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubEnterpriseConfig>? githubEnterpriseConfig;
  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfig>? gitlabConfig;
  /// Output only. Installation state of the Connection.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionInstallationState>>? installationStates;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of the connection.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. Set to true when the connection is being set up or updated in the background.
  final pulumi.Input<bool>? reconciling;
  /// Output only. Server assigned timestamp for when the connection was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ConnectionState].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [bitbucketCloudConfig] Configuration for connections to Bitbucket Cloud.
  /// [bitbucketDataCenterConfig] Configuration for connections to Bitbucket Data Center.
  /// [createTime] Output only. Server assigned timestamp for when the connection was created.
  /// [disabled] If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  /// [effectiveAnnotations] Optional.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [githubConfig] Configuration for connections to github.com.
  /// [githubEnterpriseConfig] Configuration for connections to an instance of GitHub Enterprise.
  /// [gitlabConfig] Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// [installationStates] Output only. Installation state of the Connection.
  /// [location] The location for the resource
  /// [name] Immutable. The resource name of the connection.
  /// [project] The ID of the project in which the resource belongs.
  /// [reconciling] Output only. Set to true when the connection is being set up or updated in the background.
  /// [updateTime] Output only. Server assigned timestamp for when the connection was updated.
  ConnectionState({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    this.createTime,
    this.disabled,
    this.effectiveAnnotations,
    this.etag,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.installationStates,
    this.location,
    this.name,
    this.project,
    this.reconciling,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bitbucketCloudConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBitbucketCloudConfig, Map<String, dynamic>>(bitbucketCloudConfig, (value) => value.toMap()),
      'bitbucketDataCenterConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBitbucketDataCenterConfig, Map<String, dynamic>>(bitbucketDataCenterConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'disabled': ?disabled,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'githubConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGithubConfig, Map<String, dynamic>>(githubConfig, (value) => value.toMap()),
      'githubEnterpriseConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGithubEnterpriseConfig, Map<String, dynamic>>(githubEnterpriseConfig, (value) => value.toMap()),
      'gitlabConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGitlabConfig, Map<String, dynamic>>(gitlabConfig, (value) => value.toMap()),
      'installationStates': ?pulumi.Input.mapOptionalInputValue<List<ConnectionInstallationState>, List<Map<String, dynamic>>>(installationStates, (value) => pulumi.Input.encodeList<ConnectionInstallationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'reconciling': ?reconciling,
      'updateTime': ?updateTime,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      bitbucketCloudConfig: map['bitbucketCloudConfig'] == null ? null : (ConnectionBitbucketCloudConfig.fromMap((map['bitbucketCloudConfig']! as Map).cast<String, dynamic>())).input(),
      bitbucketDataCenterConfig: map['bitbucketDataCenterConfig'] == null ? null : (ConnectionBitbucketDataCenterConfig.fromMap((map['bitbucketDataCenterConfig']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      githubConfig: map['githubConfig'] == null ? null : (ConnectionGithubConfig.fromMap((map['githubConfig']! as Map).cast<String, dynamic>())).input(),
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null ? null : (ConnectionGithubEnterpriseConfig.fromMap((map['githubEnterpriseConfig']! as Map).cast<String, dynamic>())).input(),
      gitlabConfig: map['gitlabConfig'] == null ? null : (ConnectionGitlabConfig.fromMap((map['gitlabConfig']! as Map).cast<String, dynamic>())).input(),
      installationStates: map['installationStates'] == null ? null : (pulumi.Input.decodeList<ConnectionInstallationState>(map['installationStates']!, (value) => ConnectionInstallationState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

