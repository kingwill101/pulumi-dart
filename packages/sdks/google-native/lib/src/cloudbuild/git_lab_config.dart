import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_config_args.dart';
import 'git_lab_enterprise_config_response.dart';
import 'git_lab_secrets_response.dart';

/// Creates a new `GitLabConfig`. This API is experimental
class GitLabConfig extends pulumi.CustomResource {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  late final pulumi.Output<List<Map<String, dynamic>>> connectedRepositories;

  /// Time when the config was created.
  late final pulumi.Output<String> createTime;

  /// Optional. GitLabEnterprise config.
  late final pulumi.Output<GitLabEnterpriseConfigResponse> enterpriseConfig;

  /// Optional. The ID to use for the GitLabConfig, which will become the final component of the GitLabConfig’s resource name. gitlab_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  late final pulumi.Output<String?> gitlabConfigId;
  late final pulumi.Output<String> location;

  /// The resource name for the config.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Secret Manager secrets needed by the config.
  late final pulumi.Output<GitLabSecretsResponse> secrets;

  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  late final pulumi.Output<String> username;

  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  late final pulumi.Output<String> webhookKey;

  /// Creates a new [GitLabConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GitLabConfig]. {@macro pulumi_cloudbuild_v1_git_lab_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GitLabConfig(
    String name, {
    GitLabConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudbuild/v1:GitLabConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectedRepositories = registerOutput<List<Map<String, dynamic>>>(
      'connectedRepositories',
    );
    createTime = registerOutput<String>('createTime');
    enterpriseConfig = registerOutput<GitLabEnterpriseConfigResponse>(
      'enterpriseConfig',
    );
    gitlabConfigId = registerOutput<String?>('gitlabConfigId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    secrets = registerOutput<GitLabSecretsResponse>('secrets');
    username = registerOutput<String>('username');
    webhookKey = registerOutput<String>('webhookKey');
  }
}
