// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_book_draft.dart';
import 'run_book_job_schedule.dart';
import 'run_book_publish_content_link.dart';

/// {@template pulumi_automation_run_book_run_book_args_doc}
/// The set of arguments for RunBook.
/// {@endtemplate}
/// {@macro pulumi_automation_run_book_run_book_args_doc}
class RunBookArgs {
  /// The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The desired content of the runbook.
  ///
  /// > **Note:** The Azure API requires a `publish_content_link` to be supplied even when specifying your own `content`.
  final pulumi.Input<String>? content;
  /// A description for the runbook.
  final pulumi.Input<String>? description;
  /// A `draft` block as defined below.
  final pulumi.Input<RunBookDraft>? draft;
  /// One or more `job_schedule` block as defined below.
  ///
  /// > **Note:** AzureRM provides a stand-alone azure.automation.JobSchedule and this inlined `job_schedule` property to manage the job schedules. At this time you should choose one of them to manage the job schedule resources.
  final pulumi.Input<List<RunBookJobSchedule>>? jobSchedules;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are `0` for None, `9` for Basic, and `15` for Detailed. Must turn on Verbose logging in order to see the tracing.
  final pulumi.Input<int>? logActivityTraceLevel;
  /// Progress log option.
  final pulumi.Input<bool> logProgress;
  /// Verbose log option.
  final pulumi.Input<bool> logVerbose;
  /// Specifies the name of the Runbook. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One `publish_content_link` block as defined below.
  final pulumi.Input<RunBookPublishContentLink>? publishContentLink;
  /// The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The type of the runbook - can be either `Graph`, `GraphPowerShell`, `GraphPowerShellWorkflow`, `PowerShellWorkflow`, `PowerShell`, `PowerShell72`, `Python`, `Python3`, `Python2` or `Script`. Changing this forces a new resource to be created.
  final pulumi.Input<String> runbookType;
  /// The runtime environment name for the runbook.
  ///
  /// > **Note:** The `runbook_type` must be set to a value that supports runtime environments, such as `PowerShell` or `Python`.
  final pulumi.Input<String>? runtimeEnvironmentName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RunBookArgs].
  /// [automationAccountName] The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created.
  /// [content] The desired content of the runbook.
  /// [description] A description for the runbook.
  /// [draft] A `draft` block as defined below.
  /// [jobSchedules] One or more `job_schedule` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logActivityTraceLevel] Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are `0` for None, `9` for Basic, and `15` for Detailed. Must turn on Verbose logging in order to see the tracing.
  /// [logProgress] Progress log option.
  /// [logVerbose] Verbose log option.
  /// [name] Specifies the name of the Runbook. Changing this forces a new resource to be created.
  /// [publishContentLink] One `publish_content_link` block as defined below.
  /// [resourceGroupName] The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created.
  /// [runbookType] The type of the runbook - can be either `Graph`, `GraphPowerShell`, `GraphPowerShellWorkflow`, `PowerShellWorkflow`, `PowerShell`, `PowerShell72`, `Python`, `Python3`, `Python2` or `Script`. Changing this forces a new resource to be created.
  /// [runtimeEnvironmentName] The runtime environment name for the runbook.
  /// [tags] A mapping of tags to assign to the resource.
  RunBookArgs({
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? content,
    pulumi.Output<String>? description,
    pulumi.Output<RunBookDraft>? draft,
    pulumi.Output<List<RunBookJobSchedule>>? jobSchedules,
    pulumi.Output<String>? location,
    pulumi.Output<int>? logActivityTraceLevel,
    required pulumi.Output<bool> logProgress,
    required pulumi.Output<bool> logVerbose,
    pulumi.Output<String>? name,
    pulumi.Output<RunBookPublishContentLink>? publishContentLink,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> runbookType,
    pulumi.Output<String>? runtimeEnvironmentName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      content = pulumi.Input.asOptionalInput<String>(content),
      description = pulumi.Input.asOptionalInput<String>(description),
      draft = pulumi.Input.asOptionalInput<RunBookDraft>(draft),
      jobSchedules = pulumi.Input.asOptionalInput<List<RunBookJobSchedule>>(jobSchedules),
      location = pulumi.Input.asOptionalInput<String>(location),
      logActivityTraceLevel = pulumi.Input.asOptionalInput<int>(logActivityTraceLevel),
      logProgress = pulumi.Input.asInput<bool>(logProgress),
      logVerbose = pulumi.Input.asInput<bool>(logVerbose),
      name = pulumi.Input.asOptionalInput<String>(name),
      publishContentLink = pulumi.Input.asOptionalInput<RunBookPublishContentLink>(publishContentLink),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runbookType = pulumi.Input.asInput<String>(runbookType),
      runtimeEnvironmentName = pulumi.Input.asOptionalInput<String>(runtimeEnvironmentName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'content': ?content,
      'description': ?description,
      'draft': ?pulumi.Input.mapOptionalInputValue<RunBookDraft, Map<String, dynamic>>(draft, (value) => value.toMap()),
      'jobSchedules': ?pulumi.Input.mapOptionalInputValue<List<RunBookJobSchedule>, List<Map<String, dynamic>>>(jobSchedules, (value) => pulumi.Input.encodeList<RunBookJobSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'logActivityTraceLevel': ?logActivityTraceLevel,
      'logProgress': logProgress,
      'logVerbose': logVerbose,
      'name': ?name,
      'publishContentLink': ?pulumi.Input.mapOptionalInputValue<RunBookPublishContentLink, Map<String, dynamic>>(publishContentLink, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'runbookType': runbookType,
      'runtimeEnvironmentName': ?runtimeEnvironmentName,
      'tags': ?tags,
    };
  }

  factory RunBookArgs.fromMap(Map<String, dynamic> map) {
    return RunBookArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      draft: map['draft'] == null ? null : pulumi.Output.create<RunBookDraft>(RunBookDraft.fromMap((map['draft'] as Map).cast<String, dynamic>())),
      jobSchedules: map['jobSchedules'] == null ? null : pulumi.Output.create<List<RunBookJobSchedule>>(pulumi.Input.decodeList<RunBookJobSchedule>(map['jobSchedules'], (value) => RunBookJobSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logActivityTraceLevel: map['logActivityTraceLevel'] == null ? null : pulumi.Output.create<int>(map['logActivityTraceLevel'] as int),
      logProgress: pulumi.Output.create<bool>(map['logProgress'] as bool),
      logVerbose: pulumi.Output.create<bool>(map['logVerbose'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publishContentLink: map['publishContentLink'] == null ? null : pulumi.Output.create<RunBookPublishContentLink>(RunBookPublishContentLink.fromMap((map['publishContentLink'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runbookType: pulumi.Output.create<String>(map['runbookType'] as String),
      runtimeEnvironmentName: map['runtimeEnvironmentName'] == null ? null : pulumi.Output.create<String>(map['runtimeEnvironmentName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

