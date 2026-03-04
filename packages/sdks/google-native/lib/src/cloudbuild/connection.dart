import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'git_hub_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_hub_enterprise_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_lab_config_response.dart';
import 'installation_state_response.dart';

/// Creates a Connection.
class Connection extends pulumi.CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Required. The ID to use for the Connection, which will become the final component of the Connection's resource name. Names must be unique per-project per-location. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  late final pulumi.Output<String> connectionId;

  /// Server assigned timestamp for when the connection was created.
  late final pulumi.Output<String> createTime;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  late final pulumi.Output<bool> disabled;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Configuration for connections to github.com.
  late final pulumi.Output<GitHubConfigResponse> githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  late final pulumi.Output<
    GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse
  >
  githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  late final pulumi.Output<GoogleDevtoolsCloudbuildV2GitLabConfigResponse>
  gitlabConfig;

  /// Installation state of the Connection.
  late final pulumi.Output<InstallationStateResponse> installationState;
  late final pulumi.Output<String> location;

  /// Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Set to true when the connection is being set up or updated in the background.
  late final pulumi.Output<bool> reconciling;

  /// Server assigned timestamp for when the connection was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_cloudbuild_v2_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudbuild/v2:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    connectionId = registerOutput<String>('connectionId');
    createTime = registerOutput<String>('createTime');
    disabled = registerOutput<bool>('disabled');
    etag = registerOutput<String>('etag');
    githubConfig = registerOutput<GitHubConfigResponse>('githubConfig');
    githubEnterpriseConfig =
        registerOutput<
          GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse
        >('githubEnterpriseConfig');
    gitlabConfig =
        registerOutput<GoogleDevtoolsCloudbuildV2GitLabConfigResponse>(
          'gitlabConfig',
        );
    installationState = registerOutput<InstallationStateResponse>(
      'installationState',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    updateTime = registerOutput<String>('updateTime');
  }
}
