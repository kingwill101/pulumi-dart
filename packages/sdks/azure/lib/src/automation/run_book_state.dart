// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_book_draft.dart';
import 'run_book_job_schedule.dart';
import 'run_book_publish_content_link.dart';

/// Input properties used for looking up and filtering RunBook resources.
class RunBookState {
  /// The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The desired content of the runbook.
  ///
  /// &gt; **Note:** The Azure API requires a `publish_content_link` to be supplied even when specifying your own `content`.
  final pulumi.Input<String>? content;
  /// A description for the runbook.
  final pulumi.Input<String>? description;
  /// A `draft` block as defined below.
  final pulumi.Input<RunBookDraft>? draft;
  /// One or more `job_schedule` block as defined below.
  ///
  /// &gt; **Note:** AzureRM provides a stand-alone azure.automation.JobSchedule and this inlined `job_schedule` property to manage the job schedules. At this time you should choose one of them to manage the job schedule resources.
  final pulumi.Input<List<RunBookJobSchedule>>? jobSchedules;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are `0` for None, `9` for Basic, and `15` for Detailed. Must turn on Verbose logging in order to see the tracing.
  final pulumi.Input<int>? logActivityTraceLevel;
  /// Progress log option.
  final pulumi.Input<bool>? logProgress;
  /// Verbose log option.
  final pulumi.Input<bool>? logVerbose;
  /// Specifies the name of the Runbook. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One `publish_content_link` block as defined below.
  final pulumi.Input<RunBookPublishContentLink>? publishContentLink;
  /// The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The type of the runbook - can be either `Graph`, `GraphPowerShell`, `GraphPowerShellWorkflow`, `PowerShellWorkflow`, `PowerShell`, `PowerShell72`, `Python`, `Python3`, `Python2` or `Script`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? runbookType;
  /// The runtime environment name for the runbook.
  ///
  /// &gt; **Note:** The `runbook_type` must be set to a value that supports runtime environments, such as `PowerShell` or `Python`.
  final pulumi.Input<String>? runtimeEnvironmentName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RunBookState].
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
  RunBookState({
    this.automationAccountName,
    this.content,
    this.description,
    this.draft,
    this.jobSchedules,
    this.location,
    this.logActivityTraceLevel,
    this.logProgress,
    this.logVerbose,
    this.name,
    this.publishContentLink,
    this.resourceGroupName,
    this.runbookType,
    this.runtimeEnvironmentName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'content': ?content,
      'description': ?description,
      'draft': ?pulumi.Input.mapOptionalInputValue<RunBookDraft, Map<String, dynamic>>(draft, (value) => value.toMap()),
      'jobSchedules': ?pulumi.Input.mapOptionalInputValue<List<RunBookJobSchedule>, List<Map<String, dynamic>>>(jobSchedules, (value) => pulumi.Input.encodeList<RunBookJobSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'logActivityTraceLevel': ?logActivityTraceLevel,
      'logProgress': ?logProgress,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'publishContentLink': ?pulumi.Input.mapOptionalInputValue<RunBookPublishContentLink, Map<String, dynamic>>(publishContentLink, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'runbookType': ?runbookType,
      'runtimeEnvironmentName': ?runtimeEnvironmentName,
      'tags': ?tags,
    };
  }

  factory RunBookState.fromMap(Map<String, dynamic> map) {
    return RunBookState(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      draft: (() { final guardedValue = map['draft']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunBookDraft.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobSchedules: (() { final guardedValue = map['jobSchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RunBookJobSchedule>(guardedValue, (value) => RunBookJobSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logActivityTraceLevel: (() { final guardedValue = map['logActivityTraceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logProgress: (() { final guardedValue = map['logProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logVerbose: (() { final guardedValue = map['logVerbose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishContentLink: (() { final guardedValue = map['publishContentLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunBookPublishContentLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookType: (() { final guardedValue = map['runbookType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeEnvironmentName: (() { final guardedValue = map['runtimeEnvironmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

