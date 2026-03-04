import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_config_response.dart';
import 'bitbucket_server_trigger_config_response.dart';
import 'build_response.dart';
import 'git_file_source_response.dart';
import 'git_hub_events_config_response.dart';
import 'git_lab_events_config_response.dart';
import 'git_repo_source_response.dart';
import 'pubsub_config_response.dart';
import 'repo_source_response.dart';
import 'repository_event_config_response.dart';
import 'trigger_args.dart';
import 'webhook_config_response.dart';

/// Creates a new `BuildTrigger`.
class Trigger extends pulumi.CustomResource {
  /// Configuration for manual approval to start a build invocation of this BuildTrigger.
  late final pulumi.Output<ApprovalConfigResponse> approvalConfig;

  /// Autodetect build configuration. The following precedence is used (case insensitive): 1. cloudbuild.yaml 2. cloudbuild.yml 3. cloudbuild.json 4. Dockerfile Currently only available for GitHub App Triggers.
  late final pulumi.Output<bool> autodetect;

  /// BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
  late final pulumi.Output<BitbucketServerTriggerConfigResponse>
  bitbucketServerTriggerConfig;

  /// Contents of the build template.
  late final pulumi.Output<BuildResponse> build;

  /// Time when the trigger was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable description of this trigger.
  late final pulumi.Output<String> description;

  /// If true, the trigger will never automatically execute a build.
  late final pulumi.Output<bool> disabled;

  /// EventType allows the user to explicitly set the type of event to which this BuildTrigger should respond. This field will be validated against the rest of the configuration if it is set.
  late final pulumi.Output<String> eventType;

  /// Path, from the source root, to the build configuration file (i.e. cloudbuild.yaml).
  late final pulumi.Output<String> filename;

  /// A Common Expression Language string.
  late final pulumi.Output<String> filter;

  /// The file source describing the local or remote Build template.
  late final pulumi.Output<GitFileSourceResponse> gitFileSource;

  /// GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received. Mutually exclusive with `trigger_template`.
  late final pulumi.Output<GitHubEventsConfigResponse> github;

  /// GitLabEnterpriseEventsConfig describes the configuration of a trigger that creates a build whenever a GitLab Enterprise event is received.
  late final pulumi.Output<GitLabEventsConfigResponse>
  gitlabEnterpriseEventsConfig;

  /// ignored_files and included_files are file glob matches using https://golang.org/pkg/path/filepath/#Match extended with support for "**". If ignored_files and changed files are both empty, then they are not used to determine whether or not to trigger a build. If ignored_files is not empty, then we ignore any files that match any of the ignored_file globs. If the change has no files that are outside of the ignored_files globs, then we do not trigger a build.
  late final pulumi.Output<List<String>> ignoredFiles;

  /// If set to INCLUDE_BUILD_LOGS_WITH_STATUS, log url will be shown on GitHub page when build status is final. Setting this field to INCLUDE_BUILD_LOGS_WITH_STATUS for non GitHub triggers results in INVALID_ARGUMENT error.
  late final pulumi.Output<String> includeBuildLogs;

  /// If any of the files altered in the commit pass the ignored_files filter and included_files is empty, then as far as this filter is concerned, we should trigger the build. If any of the files altered in the commit pass the ignored_files filter and included_files is not empty, then we make sure that at least one of those files matches a included_files glob. If not, then we do not trigger a build.
  late final pulumi.Output<List<String>> includedFiles;
  late final pulumi.Output<String> location;

  /// User-assigned name of the trigger. Must be unique within the project. Trigger names must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. ID of the project for which to configure automatic builds.
  late final pulumi.Output<String> projectId;

  /// PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.
  late final pulumi.Output<PubsubConfigResponse> pubsubConfig;

  /// The configuration of a trigger that creates a build whenever an event from Repo API is received.
  late final pulumi.Output<RepositoryEventConfigResponse> repositoryEventConfig;

  /// The `Trigger` name with format: `projects/{project}/locations/{location}/triggers/{trigger}`, where {trigger} is a unique identifier generated by the service.
  late final pulumi.Output<String> resourceName;

  /// The service account used for all user-controlled operations including UpdateBuildTrigger, RunBuildTrigger, CreateBuild, and CancelBuild. If no service account is set, then the standard Cloud Build service account ([PROJECT_NUM]@system.gserviceaccount.com) will be used instead. Format: `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}`
  late final pulumi.Output<String> serviceAccount;

  /// The repo and ref of the repository from which to build. This field is used only for those triggers that do not respond to SCM events. Triggers that respond to such events build source at whatever commit caused the event. This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.
  late final pulumi.Output<GitRepoSourceResponse> sourceToBuild;

  /// Substitutions for Build resource. The keys must match the following regular expression: `^_[A-Z0-9_]+$`.
  late final pulumi.Output<Map<String, String>> substitutions;

  /// Tags for annotation of a `BuildTrigger`
  late final pulumi.Output<List<String>> tags;

  /// Template describing the types of source changes to trigger a build. Branch and tag names in trigger templates are interpreted as regular expressions. Any branch or tag change that matches that regular expression will trigger a build. Mutually exclusive with `github`.
  late final pulumi.Output<RepoSourceResponse> triggerTemplate;

  /// WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger's webhook URL.
  late final pulumi.Output<WebhookConfigResponse> webhookConfig;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_cloudbuild_v1_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudbuild/v1:Trigger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    approvalConfig = registerOutput<ApprovalConfigResponse>('approvalConfig');
    autodetect = registerOutput<bool>('autodetect');
    bitbucketServerTriggerConfig =
        registerOutput<BitbucketServerTriggerConfigResponse>(
          'bitbucketServerTriggerConfig',
        );
    build = registerOutput<BuildResponse>('build');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    eventType = registerOutput<String>('eventType');
    filename = registerOutput<String>('filename');
    filter = registerOutput<String>('filter');
    gitFileSource = registerOutput<GitFileSourceResponse>('gitFileSource');
    github = registerOutput<GitHubEventsConfigResponse>('github');
    gitlabEnterpriseEventsConfig = registerOutput<GitLabEventsConfigResponse>(
      'gitlabEnterpriseEventsConfig',
    );
    ignoredFiles = registerOutput<List<String>>('ignoredFiles');
    includeBuildLogs = registerOutput<String>('includeBuildLogs');
    includedFiles = registerOutput<List<String>>('includedFiles');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    projectId = registerOutput<String>('projectId');
    pubsubConfig = registerOutput<PubsubConfigResponse>('pubsubConfig');
    repositoryEventConfig = registerOutput<RepositoryEventConfigResponse>(
      'repositoryEventConfig',
    );
    resourceName = registerOutput<String>('resourceName');
    serviceAccount = registerOutput<String>('serviceAccount');
    sourceToBuild = registerOutput<GitRepoSourceResponse>('sourceToBuild');
    substitutions = registerOutput<Map<String, String>>('substitutions');
    tags = registerOutput<List<String>>('tags');
    triggerTemplate = registerOutput<RepoSourceResponse>('triggerTemplate');
    webhookConfig = registerOutput<WebhookConfigResponse>('webhookConfig');
  }
}
