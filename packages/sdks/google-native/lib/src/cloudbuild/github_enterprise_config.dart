import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_enterprise_secrets_response.dart';
import 'github_enterprise_config_args.dart';

/// Create an association between a GCP project and a GitHub Enterprise server.
class GithubEnterpriseConfig extends pulumi.CustomResource {
  /// The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  late final pulumi.Output<String> appId;

  /// Time when the installation was associated with the project.
  late final pulumi.Output<String> createTime;

  /// Name to display for this config.
  late final pulumi.Output<String> displayName;

  /// Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig's resource name. ghe_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  late final pulumi.Output<String?> gheConfigId;

  /// The URL of the github enterprise host the configuration is for.
  late final pulumi.Output<String> hostUrl;
  late final pulumi.Output<String> location;

  /// Optional. The full resource name for the GitHubEnterpriseConfig For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  late final pulumi.Output<String> name;

  /// Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  late final pulumi.Output<String> peeredNetwork;
  late final pulumi.Output<String> project;

  /// ID of the project.
  late final pulumi.Output<String?> projectId;

  /// Names of secrets in Secret Manager.
  late final pulumi.Output<GitHubEnterpriseSecretsResponse> secrets;

  /// Optional. SSL certificate to use for requests to GitHub Enterprise.
  late final pulumi.Output<String> sslCa;

  /// The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
  late final pulumi.Output<String> webhookKey;

  /// Creates a new [GithubEnterpriseConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GithubEnterpriseConfig]. {@macro pulumi_cloudbuild_v1_github_enterprise_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GithubEnterpriseConfig(
    String name, {
    GithubEnterpriseConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudbuild/v1:GithubEnterpriseConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appId = registerOutput<String>('appId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    gheConfigId = registerOutput<String?>('gheConfigId');
    hostUrl = registerOutput<String>('hostUrl');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peeredNetwork = registerOutput<String>('peeredNetwork');
    project = registerOutput<String>('project');
    projectId = registerOutput<String?>('projectId');
    secrets = registerOutput<GitHubEnterpriseSecretsResponse>(
      'secrets',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GitHubEnterpriseSecretsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sslCa = registerOutput<String>('sslCa');
    webhookKey = registerOutput<String>('webhookKey');
  }
}
