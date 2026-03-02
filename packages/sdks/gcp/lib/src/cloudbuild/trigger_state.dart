// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_approval_config.dart';
import 'trigger_bitbucket_server_trigger_config.dart';
import 'trigger_build.dart';
import 'trigger_developer_connect_event_config.dart';
import 'trigger_git_file_source.dart';
import 'trigger_github.dart';
import 'trigger_pubsub_config.dart';
import 'trigger_repository_event_config.dart';
import 'trigger_source_to_build.dart';
import 'trigger_trigger_template.dart';
import 'trigger_webhook_config.dart';

/// Input properties used for looking up and filtering Trigger resources.
class TriggerState {
  /// Configuration for manual approval to start a build invocation of this BuildTrigger.
  /// Builds created by this trigger will require approval before they execute.
  /// Any user with a Cloud Build Approver role for the project can approve a build.
  /// Structure is documented below.
  final pulumi.Input<TriggerApprovalConfig>? approvalConfig;
  /// BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
  /// Structure is documented below.
  final pulumi.Input<TriggerBitbucketServerTriggerConfig>? bitbucketServerTriggerConfig;
  /// Contents of the build template. Either a filename or build template must be provided.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuild>? build;
  /// Time when the trigger was created.
  final pulumi.Input<String>? createTime;
  /// Human-readable description of the trigger.
  final pulumi.Input<String>? description;
  /// Configuration for triggers that respond to Developer Connect events.
  /// Structure is documented below.
  final pulumi.Input<TriggerDeveloperConnectEventConfig>? developerConnectEventConfig;
  /// Whether the trigger is disabled or not. If true, the trigger will never result in a build.
  final pulumi.Input<bool>? disabled;
  /// Path, from the source root, to a file whose contents is used for the template.
  /// Either a filename or build template must be provided. Set this only when using trigger_template or github.
  /// When using Pub/Sub, Webhook or Manual set the file name using git_file_source instead.
  final pulumi.Input<String>? filename;
  /// A Common Expression Language string. Used only with Pub/Sub and Webhook.
  final pulumi.Input<String>? filter;
  /// The file source describing the local or remote Build template.
  /// Structure is documented below.
  final pulumi.Input<TriggerGitFileSource>? gitFileSource;
  /// Describes the configuration of a trigger that creates a build whenever a GitHub event is received.
  /// One of `trigger_template`, `github`, `pubsub_config` or `webhook_config` must be provided.
  /// Structure is documented below.
  final pulumi.Input<TriggerGithub>? github;
  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If ignoredFiles and changed files are both empty, then they are not
  /// used to determine whether or not to trigger a build.
  /// If ignoredFiles is not empty, then we ignore any files that match any
  /// of the ignored_file globs. If the change has no files that are outside
  /// of the ignoredFiles globs, then we do not trigger a build.
  final pulumi.Input<List<String>>? ignoredFiles;
  /// Build logs will be sent back to GitHub as part of the checkrun
  /// result.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
  /// INCLUDE_BUILD_LOGS_WITH_STATUS
  /// Possible values are: `INCLUDE_BUILD_LOGS_UNSPECIFIED`, `INCLUDE_BUILD_LOGS_WITH_STATUS`.
  final pulumi.Input<String>? includeBuildLogs;
  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is empty, then as far as this filter is concerned, we
  /// should trigger the build.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is not empty, then we make sure that at least one of
  /// those files matches a includedFiles glob. If not, then we do not trigger
  /// a build.
  final pulumi.Input<List<String>>? includedFiles;
  /// The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
  /// If not specified, "global" is used.
  final pulumi.Input<String>? location;
  /// Name of the trigger. Must be unique within the project.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// PubsubConfig describes the configuration of a trigger that creates
  /// a build whenever a Pub/Sub message is published.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final pulumi.Input<TriggerPubsubConfig>? pubsubConfig;
  /// The configuration of a trigger that creates a build whenever an event from Repo API is received.
  /// Structure is documented below.
  final pulumi.Input<TriggerRepositoryEventConfig>? repositoryEventConfig;
  /// The service account used for all user-controlled operations including
  /// triggers.patch, triggers.run, builds.create, and builds.cancel.
  /// If no service account is set, then the standard Cloud Build service account
  /// ([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.
  /// Format: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}
  final pulumi.Input<String>? serviceAccount;
  /// The repo and ref of the repository from which to build.
  /// This field is used only for those triggers that do not respond to SCM events.
  /// Triggers that respond to such events build source at whatever commit caused the event.
  /// This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final pulumi.Input<TriggerSourceToBuild>? sourceToBuild;
  /// Substitutions data for Build resource.
  final pulumi.Input<Map<String, String>>? substitutions;
  /// Tags for annotation of a BuildTrigger
  final pulumi.Input<List<String>>? tags;
  /// The unique identifier for the trigger.
  final pulumi.Input<String>? triggerId;
  /// Template describing the types of source changes to trigger a build.
  /// Branch and tag names in trigger templates are interpreted as regular
  /// expressions. Any branch or tag change that matches that regular
  /// expression will trigger a build.
  /// One of `trigger_template`, `github`, `pubsub_config`, `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final pulumi.Input<TriggerTriggerTemplate>? triggerTemplate;
  /// WebhookConfig describes the configuration of a trigger that creates
  /// a build whenever a webhook is sent to a trigger's webhook URL.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final pulumi.Input<TriggerWebhookConfig>? webhookConfig;

  /// Creates a new [TriggerState].
  /// [approvalConfig] Configuration for manual approval to start a build invocation of this BuildTrigger.
  /// [bitbucketServerTriggerConfig] BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
  /// [build] Contents of the build template. Either a filename or build template must be provided.
  /// [createTime] Time when the trigger was created.
  /// [description] Human-readable description of the trigger.
  /// [developerConnectEventConfig] Configuration for triggers that respond to Developer Connect events.
  /// [disabled] Whether the trigger is disabled or not. If true, the trigger will never result in a build.
  /// [filename] Path, from the source root, to a file whose contents is used for the template.
  /// [filter] A Common Expression Language string. Used only with Pub/Sub and Webhook.
  /// [gitFileSource] The file source describing the local or remote Build template.
  /// [github] Describes the configuration of a trigger that creates a build whenever a GitHub event is received.
  /// [ignoredFiles] ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// [includeBuildLogs] Build logs will be sent back to GitHub as part of the checkrun
  /// [includedFiles] ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// [location] The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
  /// [name] Name of the trigger. Must be unique within the project.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubConfig] PubsubConfig describes the configuration of a trigger that creates
  /// [repositoryEventConfig] The configuration of a trigger that creates a build whenever an event from Repo API is received.
  /// [serviceAccount] The service account used for all user-controlled operations including
  /// [sourceToBuild] The repo and ref of the repository from which to build.
  /// [substitutions] Substitutions data for Build resource.
  /// [tags] Tags for annotation of a BuildTrigger
  /// [triggerId] The unique identifier for the trigger.
  /// [triggerTemplate] Template describing the types of source changes to trigger a build.
  /// [webhookConfig] WebhookConfig describes the configuration of a trigger that creates
  TriggerState({
    this.approvalConfig,
    this.bitbucketServerTriggerConfig,
    this.build,
    this.createTime,
    this.description,
    this.developerConnectEventConfig,
    this.disabled,
    this.filename,
    this.filter,
    this.gitFileSource,
    this.github,
    this.ignoredFiles,
    this.includeBuildLogs,
    this.includedFiles,
    this.location,
    this.name,
    this.project,
    this.pubsubConfig,
    this.repositoryEventConfig,
    this.serviceAccount,
    this.sourceToBuild,
    this.substitutions,
    this.tags,
    this.triggerId,
    this.triggerTemplate,
    this.webhookConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalConfig': ?pulumi.Input.mapOptionalInputValue<TriggerApprovalConfig, Map<String, dynamic>>(approvalConfig, (value) => value.toMap()),
      'bitbucketServerTriggerConfig': ?pulumi.Input.mapOptionalInputValue<TriggerBitbucketServerTriggerConfig, Map<String, dynamic>>(bitbucketServerTriggerConfig, (value) => value.toMap()),
      'build': ?pulumi.Input.mapOptionalInputValue<TriggerBuild, Map<String, dynamic>>(build, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'developerConnectEventConfig': ?pulumi.Input.mapOptionalInputValue<TriggerDeveloperConnectEventConfig, Map<String, dynamic>>(developerConnectEventConfig, (value) => value.toMap()),
      'disabled': ?disabled,
      'filename': ?filename,
      'filter': ?filter,
      'gitFileSource': ?pulumi.Input.mapOptionalInputValue<TriggerGitFileSource, Map<String, dynamic>>(gitFileSource, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<TriggerGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'ignoredFiles': ?ignoredFiles,
      'includeBuildLogs': ?includeBuildLogs,
      'includedFiles': ?includedFiles,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pubsubConfig': ?pulumi.Input.mapOptionalInputValue<TriggerPubsubConfig, Map<String, dynamic>>(pubsubConfig, (value) => value.toMap()),
      'repositoryEventConfig': ?pulumi.Input.mapOptionalInputValue<TriggerRepositoryEventConfig, Map<String, dynamic>>(repositoryEventConfig, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'sourceToBuild': ?pulumi.Input.mapOptionalInputValue<TriggerSourceToBuild, Map<String, dynamic>>(sourceToBuild, (value) => value.toMap()),
      'substitutions': ?substitutions,
      'tags': ?tags,
      'triggerId': ?triggerId,
      'triggerTemplate': ?pulumi.Input.mapOptionalInputValue<TriggerTriggerTemplate, Map<String, dynamic>>(triggerTemplate, (value) => value.toMap()),
      'webhookConfig': ?pulumi.Input.mapOptionalInputValue<TriggerWebhookConfig, Map<String, dynamic>>(webhookConfig, (value) => value.toMap()),
    };
  }

  factory TriggerState.fromMap(Map<String, dynamic> map) {
    return TriggerState(
      approvalConfig: map['approvalConfig'] == null ? null : (TriggerApprovalConfig.fromMap((map['approvalConfig']! as Map).cast<String, dynamic>())).input(),
      bitbucketServerTriggerConfig: map['bitbucketServerTriggerConfig'] == null ? null : (TriggerBitbucketServerTriggerConfig.fromMap((map['bitbucketServerTriggerConfig']! as Map).cast<String, dynamic>())).input(),
      build: map['build'] == null ? null : (TriggerBuild.fromMap((map['build']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      developerConnectEventConfig: map['developerConnectEventConfig'] == null ? null : (TriggerDeveloperConnectEventConfig.fromMap((map['developerConnectEventConfig']! as Map).cast<String, dynamic>())).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      filename: map['filename'] == null ? null : (map['filename']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      gitFileSource: map['gitFileSource'] == null ? null : (TriggerGitFileSource.fromMap((map['gitFileSource']! as Map).cast<String, dynamic>())).input(),
      github: map['github'] == null ? null : (TriggerGithub.fromMap((map['github']! as Map).cast<String, dynamic>())).input(),
      ignoredFiles: map['ignoredFiles'] == null ? null : ((map['ignoredFiles']! as List).cast<String>()).input(),
      includeBuildLogs: map['includeBuildLogs'] == null ? null : (map['includeBuildLogs']! as String).input(),
      includedFiles: map['includedFiles'] == null ? null : ((map['includedFiles']! as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pubsubConfig: map['pubsubConfig'] == null ? null : (TriggerPubsubConfig.fromMap((map['pubsubConfig']! as Map).cast<String, dynamic>())).input(),
      repositoryEventConfig: map['repositoryEventConfig'] == null ? null : (TriggerRepositoryEventConfig.fromMap((map['repositoryEventConfig']! as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      sourceToBuild: map['sourceToBuild'] == null ? null : (TriggerSourceToBuild.fromMap((map['sourceToBuild']! as Map).cast<String, dynamic>())).input(),
      substitutions: map['substitutions'] == null ? null : ((map['substitutions']! as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      triggerId: map['triggerId'] == null ? null : (map['triggerId']! as String).input(),
      triggerTemplate: map['triggerTemplate'] == null ? null : (TriggerTriggerTemplate.fromMap((map['triggerTemplate']! as Map).cast<String, dynamic>())).input(),
      webhookConfig: map['webhookConfig'] == null ? null : (TriggerWebhookConfig.fromMap((map['webhookConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

