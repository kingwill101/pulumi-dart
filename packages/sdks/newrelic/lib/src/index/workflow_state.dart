// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_destination.dart';
import 'workflow_enrichments.dart';
import 'workflow_issues_filter.dart';

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// Determines the New Relic account in which the workflow is created. Defaults to the account defined in the provider section.
  final pulumi.Input<String>? accountId;
  /// Notification configuration. See Nested destination blocks below for details.
  final pulumi.Input<List<WorkflowDestination>>? destinations;
  /// **DEPRECATED** Whether destinations are enabled. Please use `enabled` instead:
  /// these two are different flags, but they are functionally identical. Defaults to true.
  final pulumi.Input<bool>? destinationsEnabled;
  /// Whether workflow is enabled. Defaults to true.
  final pulumi.Input<bool>? enabled;
  /// Workflow's enrichments. See Nested enrichments blocks below for details.
  final pulumi.Input<WorkflowEnrichments>? enrichments;
  /// Whether enrichments are enabled. Defaults to true.
  final pulumi.Input<bool>? enrichmentsEnabled;
  /// Workflow entity GUID
  final pulumi.Input<String>? guid;
  /// A filter used to identify issues handled by this workflow. See Nested issues_filter blocks below for details.
  final pulumi.Input<WorkflowIssuesFilter>? issuesFilter;
  /// The last time notification was sent for this workflow.
  final pulumi.Input<String>? lastRun;
  /// How to handle muted issues. See Muting Rules below for details.
  final pulumi.Input<String>? mutingRulesHandling;
  /// The name of the workflow.
  final pulumi.Input<String>? name;
  /// The id of the workflow.
  final pulumi.Input<String>? workflowId;

  /// Creates a new [WorkflowState].
  /// [accountId] Determines the New Relic account in which the workflow is created. Defaults to the account defined in the provider section.
  /// [destinations] Notification configuration. See Nested destination blocks below for details.
  /// [destinationsEnabled] **DEPRECATED** Whether destinations are enabled. Please use `enabled` instead:
  /// [enabled] Whether workflow is enabled. Defaults to true.
  /// [enrichments] Workflow's enrichments. See Nested enrichments blocks below for details.
  /// [enrichmentsEnabled] Whether enrichments are enabled. Defaults to true.
  /// [guid] Workflow entity GUID
  /// [issuesFilter] A filter used to identify issues handled by this workflow. See Nested issues_filter blocks below for details.
  /// [lastRun] The last time notification was sent for this workflow.
  /// [mutingRulesHandling] How to handle muted issues. See Muting Rules below for details.
  /// [name] The name of the workflow.
  /// [workflowId] The id of the workflow.
  const WorkflowState({
    this.accountId,
    this.destinations,
    this.destinationsEnabled,
    this.enabled,
    this.enrichments,
    this.enrichmentsEnabled,
    this.guid,
    this.issuesFilter,
    this.lastRun,
    this.mutingRulesHandling,
    this.name,
    this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<WorkflowDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<WorkflowDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationsEnabled': ?destinationsEnabled,
      'enabled': ?enabled,
      'enrichments': ?pulumi.Input.mapOptionalInputValue<WorkflowEnrichments, Map<String, dynamic>>(enrichments, (value) => value.toMap()),
      'enrichmentsEnabled': ?enrichmentsEnabled,
      'guid': ?guid,
      'issuesFilter': ?pulumi.Input.mapOptionalInputValue<WorkflowIssuesFilter, Map<String, dynamic>>(issuesFilter, (value) => value.toMap()),
      'lastRun': ?lastRun,
      'mutingRulesHandling': ?mutingRulesHandling,
      'name': ?name,
      'workflowId': ?workflowId,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowDestination>(guardedValue, (value) => WorkflowDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinationsEnabled: (() { final guardedValue = map['destinationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enrichments: (() { final guardedValue = map['enrichments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowEnrichments.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enrichmentsEnabled: (() { final guardedValue = map['enrichmentsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuesFilter: (() { final guardedValue = map['issuesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowIssuesFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastRun: (() { final guardedValue = map['lastRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mutingRulesHandling: (() { final guardedValue = map['mutingRulesHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowId: (() { final guardedValue = map['workflowId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

