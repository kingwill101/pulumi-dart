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
  WorkflowState({
    pulumi.Output<String>? accountId,
    pulumi.Output<List<WorkflowDestination>>? destinations,
    pulumi.Output<bool>? destinationsEnabled,
    pulumi.Output<bool>? enabled,
    pulumi.Output<WorkflowEnrichments>? enrichments,
    pulumi.Output<bool>? enrichmentsEnabled,
    pulumi.Output<String>? guid,
    pulumi.Output<WorkflowIssuesFilter>? issuesFilter,
    pulumi.Output<String>? lastRun,
    pulumi.Output<String>? mutingRulesHandling,
    pulumi.Output<String>? name,
    pulumi.Output<String>? workflowId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      destinations = pulumi.Input.asOptionalInput<List<WorkflowDestination>>(destinations),
      destinationsEnabled = pulumi.Input.asOptionalInput<bool>(destinationsEnabled),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      enrichments = pulumi.Input.asOptionalInput<WorkflowEnrichments>(enrichments),
      enrichmentsEnabled = pulumi.Input.asOptionalInput<bool>(enrichmentsEnabled),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      issuesFilter = pulumi.Input.asOptionalInput<WorkflowIssuesFilter>(issuesFilter),
      lastRun = pulumi.Input.asOptionalInput<String>(lastRun),
      mutingRulesHandling = pulumi.Input.asOptionalInput<String>(mutingRulesHandling),
      name = pulumi.Input.asOptionalInput<String>(name),
      workflowId = pulumi.Input.asOptionalInput<String>(workflowId);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      destinations: map['destinations'] == null ? null : pulumi.Output.create<List<WorkflowDestination>>(pulumi.Input.decodeList<WorkflowDestination>(map['destinations'], (value) => WorkflowDestination.fromMap((value as Map).cast<String, dynamic>()))),
      destinationsEnabled: map['destinationsEnabled'] == null ? null : pulumi.Output.create<bool>(map['destinationsEnabled'] as bool),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      enrichments: map['enrichments'] == null ? null : pulumi.Output.create<WorkflowEnrichments>(WorkflowEnrichments.fromMap((map['enrichments'] as Map).cast<String, dynamic>())),
      enrichmentsEnabled: map['enrichmentsEnabled'] == null ? null : pulumi.Output.create<bool>(map['enrichmentsEnabled'] as bool),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      issuesFilter: map['issuesFilter'] == null ? null : pulumi.Output.create<WorkflowIssuesFilter>(WorkflowIssuesFilter.fromMap((map['issuesFilter'] as Map).cast<String, dynamic>())),
      lastRun: map['lastRun'] == null ? null : pulumi.Output.create<String>(map['lastRun'] as String),
      mutingRulesHandling: map['mutingRulesHandling'] == null ? null : pulumi.Output.create<String>(map['mutingRulesHandling'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      workflowId: map['workflowId'] == null ? null : pulumi.Output.create<String>(map['workflowId'] as String),
    );
  }
}

