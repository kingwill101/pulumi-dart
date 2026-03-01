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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<ConnectionBitbucketCloudConfig>? bitbucketCloudConfig,
    pulumi.Output<ConnectionBitbucketDataCenterConfig>? bitbucketDataCenterConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disabled,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? etag,
    pulumi.Output<ConnectionGithubConfig>? githubConfig,
    pulumi.Output<ConnectionGithubEnterpriseConfig>? githubEnterpriseConfig,
    pulumi.Output<ConnectionGitlabConfig>? gitlabConfig,
    pulumi.Output<List<ConnectionInstallationState>>? installationStates,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      bitbucketCloudConfig = pulumi.Input.asOptionalInput<ConnectionBitbucketCloudConfig>(bitbucketCloudConfig),
      bitbucketDataCenterConfig = pulumi.Input.asOptionalInput<ConnectionBitbucketDataCenterConfig>(bitbucketDataCenterConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      githubConfig = pulumi.Input.asOptionalInput<ConnectionGithubConfig>(githubConfig),
      githubEnterpriseConfig = pulumi.Input.asOptionalInput<ConnectionGithubEnterpriseConfig>(githubEnterpriseConfig),
      gitlabConfig = pulumi.Input.asOptionalInput<ConnectionGitlabConfig>(gitlabConfig),
      installationStates = pulumi.Input.asOptionalInput<List<ConnectionInstallationState>>(installationStates),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      bitbucketCloudConfig: map['bitbucketCloudConfig'] == null ? null : pulumi.Output.create<ConnectionBitbucketCloudConfig>(ConnectionBitbucketCloudConfig.fromMap((map['bitbucketCloudConfig'] as Map).cast<String, dynamic>())),
      bitbucketDataCenterConfig: map['bitbucketDataCenterConfig'] == null ? null : pulumi.Output.create<ConnectionBitbucketDataCenterConfig>(ConnectionBitbucketDataCenterConfig.fromMap((map['bitbucketDataCenterConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      githubConfig: map['githubConfig'] == null ? null : pulumi.Output.create<ConnectionGithubConfig>(ConnectionGithubConfig.fromMap((map['githubConfig'] as Map).cast<String, dynamic>())),
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null ? null : pulumi.Output.create<ConnectionGithubEnterpriseConfig>(ConnectionGithubEnterpriseConfig.fromMap((map['githubEnterpriseConfig'] as Map).cast<String, dynamic>())),
      gitlabConfig: map['gitlabConfig'] == null ? null : pulumi.Output.create<ConnectionGitlabConfig>(ConnectionGitlabConfig.fromMap((map['gitlabConfig'] as Map).cast<String, dynamic>())),
      installationStates: map['installationStates'] == null ? null : pulumi.Output.create<List<ConnectionInstallationState>>(pulumi.Input.decodeList<ConnectionInstallationState>(map['installationStates'], (value) => ConnectionInstallationState.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

