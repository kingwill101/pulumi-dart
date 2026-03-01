// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_config.dart';
import 'google_devtools_cloudbuild_v2_git_hub_enterprise_config.dart';
import 'google_devtools_cloudbuild_v2_git_lab_config.dart';

/// {@template pulumi_cloudbuild_v2_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v2_connection_args_doc}
class ConnectionArgs {
  /// Allows clients to store small amounts of arbitrary data.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Required. The ID to use for the Connection, which will become the final component of the Connection's resource name. Names must be unique per-project per-location. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final pulumi.Input<String> connectionId;
  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final pulumi.Input<bool>? disabled;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Configuration for connections to github.com.
  final pulumi.Input<GitHubConfig>? githubConfig;
  /// Configuration for connections to an instance of GitHub Enterprise.
  final pulumi.Input<GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig>? githubEnterpriseConfig;
  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  final pulumi.Input<GoogleDevtoolsCloudbuildV2GitLabConfig>? gitlabConfig;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ConnectionArgs].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [connectionId] Required. The ID to use for the Connection, which will become the final component of the Connection's resource name. Names must be unique per-project per-location. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  /// [disabled] If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [githubConfig] Configuration for connections to github.com.
  /// [githubEnterpriseConfig] Configuration for connections to an instance of GitHub Enterprise.
  /// [gitlabConfig] Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  /// [project] Optional.
  ConnectionArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> connectionId,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? etag,
    pulumi.Output<GitHubConfig>? githubConfig,
    pulumi.Output<GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig>? githubEnterpriseConfig,
    pulumi.Output<GoogleDevtoolsCloudbuildV2GitLabConfig>? gitlabConfig,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      connectionId = pulumi.Input.asInput<String>(connectionId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      githubConfig = pulumi.Input.asOptionalInput<GitHubConfig>(githubConfig),
      githubEnterpriseConfig = pulumi.Input.asOptionalInput<GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig>(githubEnterpriseConfig),
      gitlabConfig = pulumi.Input.asOptionalInput<GoogleDevtoolsCloudbuildV2GitLabConfig>(gitlabConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectionId': connectionId,
      'disabled': ?disabled,
      'etag': ?etag,
      'githubConfig': ?pulumi.Input.mapOptionalInputValue<GitHubConfig, Map<String, dynamic>>(githubConfig, (value) => value.toMap()),
      'githubEnterpriseConfig': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig, Map<String, dynamic>>(githubEnterpriseConfig, (value) => value.toMap()),
      'gitlabConfig': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsCloudbuildV2GitLabConfig, Map<String, dynamic>>(gitlabConfig, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      githubConfig: map['githubConfig'] == null ? null : pulumi.Output.create<GitHubConfig>(GitHubConfig.fromMap((map['githubConfig'] as Map).cast<String, dynamic>())),
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null ? null : pulumi.Output.create<GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig>(GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig.fromMap((map['githubEnterpriseConfig'] as Map).cast<String, dynamic>())),
      gitlabConfig: map['gitlabConfig'] == null ? null : pulumi.Output.create<GoogleDevtoolsCloudbuildV2GitLabConfig>(GoogleDevtoolsCloudbuildV2GitLabConfig.fromMap((map['gitlabConfig'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

