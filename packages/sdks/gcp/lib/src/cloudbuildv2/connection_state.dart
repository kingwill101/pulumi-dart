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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configuration for connections to Bitbucket Cloud.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketCloudConfig>? bitbucketCloudConfig;
  /// Configuration for connections to Bitbucket Data Center.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfig>? bitbucketDataCenterConfig;
  /// Output only. Server assigned timestamp for when the connection was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final pulumi.Input<bool>? disabled;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
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
  const ConnectionState({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      bitbucketCloudConfig: (() { final guardedValue = map['bitbucketCloudConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionBitbucketCloudConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bitbucketDataCenterConfig: (() { final guardedValue = map['bitbucketDataCenterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionBitbucketDataCenterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      githubConfig: (() { final guardedValue = map['githubConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGithubConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubEnterpriseConfig: (() { final guardedValue = map['githubEnterpriseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGithubEnterpriseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlabConfig: (() { final guardedValue = map['gitlabConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGitlabConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      installationStates: (() { final guardedValue = map['installationStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionInstallationState>(guardedValue, (value) => ConnectionInstallationState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
