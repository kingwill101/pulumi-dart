// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';
import 'multi_step.dart';
import 'outcome.dart';
import 'step_dimension_value_entry.dart';
import 'step_labels_entry.dart';
import 'step_state.dart';
import 'test_execution_step.dart';
import 'timestamp.dart';
import 'tool_execution_step.dart';

/// {@template pulumi_toolresults_v1beta3_step_args_doc}
/// The set of arguments for Step.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_step_args_doc}
class StepArgs {
  /// The time when the step status was set to complete. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  final pulumi.Input<Timestamp>? completionTime;
  /// The time when the step was created. - In response: always set - In create/update request: never set
  final pulumi.Input<Timestamp>? creationTime;
  /// A description of this tool For example: mvn clean package -D skipTests=true - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<String>? description;
  /// How much the device resource is used to perform the test. This is the device usage used for billing purpose, which is different from the run_duration, for example, infrastructure failure won't be charged for device usage. PRECONDITION_FAILED will be returned if one attempts to set a device_usage on a step which already has this field set. - In response: present if previously set. - In create request: optional - In update request: optional
  final pulumi.Input<Duration>? deviceUsageDuration;
  /// If the execution containing this step has any dimension_definition set, then this field allows the child to specify the values of the dimensions. The keys must exactly match the dimension_definition of the execution. For example, if the execution has `dimension_definition = ['attempt', 'device']` then a step must define values for those dimensions, eg. `dimension_value = ['attempt': '1', 'device': 'Nexus 6']` If a step does not participate in one dimension of the matrix, the value for that dimension should be empty string. For example, if one of the tests is executed by a runner which does not support retries, the step could have `dimension_value = ['attempt': '', 'device': 'Nexus 6']` If the step does not participate in any dimensions of the matrix, it may leave dimension_value unset. A PRECONDITION_FAILED will be returned if any of the keys do not exist in the dimension_definition of the execution. A PRECONDITION_FAILED will be returned if another step in this execution already has the same name and dimension_value, but differs on other data fields, for example, step field is different. A PRECONDITION_FAILED will be returned if dimension_value is set, and there is a dimension_definition in the execution which is not specified as one of the keys. - In response: present if set by create - In create request: optional - In update request: never set
  final pulumi.Input<List<StepDimensionValueEntry>>? dimensionValue;
  final pulumi.Input<String> executionId;
  /// Whether any of the outputs of this step are images whose thumbnails can be fetched with ListThumbnails. - In response: always set - In create/update request: never set
  final pulumi.Input<bool>? hasImages;
  final pulumi.Input<String> historyId;
  /// Arbitrary user-supplied key/value pairs that are associated with the step. Users are responsible for managing the key namespace such that keys don't accidentally collide. An INVALID_ARGUMENT will be returned if the number of labels exceeds 100 or if the length of any of the keys or values exceeds 100 characters. - In response: always set - In create request: optional - In update request: optional; any new key/value pair will be added to the map, and any new value for an existing key will update that key's value
  final pulumi.Input<List<StepLabelsEntry>>? labels;
  /// Details when multiple steps are run with the same configuration as a group. These details can be used identify which group this step is part of. It also identifies the groups 'primary step' which indexes all the group members. - In response: present if previously set. - In create request: optional, set iff this step was performed more than once. - In update request: optional
  final pulumi.Input<MultiStep>? multiStep;
  /// A short human-readable name to display in the UI. Maximum of 100 characters. For example: Clean build A PRECONDITION_FAILED will be returned upon creating a new step if it shares its name and dimension_value with an existing step. If two steps represent a similar action, but have different dimension values, they should share the same name. For instance, if the same set of tests is run on two different platforms, the two steps should have the same name. - In response: always set - In create request: always set - In update request: never set
  final pulumi.Input<String>? name;
  /// Classification of the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<Outcome>? outcome;
  final pulumi.Input<String>? project;
  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  final pulumi.Input<String>? requestId;
  /// How long it took for this step to run. If unset, this is set to the difference between creation_time and completion_time when the step is set to the COMPLETE state. In some cases, it is appropriate to set this value separately: For instance, if a step is created, but the operation it represents is queued for a few minutes before it executes, it would be appropriate not to include the time spent queued in its run_duration. PRECONDITION_FAILED will be returned if one attempts to set a run_duration on a step which already has this field set. - In response: present if previously set; always present on COMPLETE step - In create request: optional - In update request: optional
  final pulumi.Input<Duration>? runDuration;
  /// The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -> COMPLETE A PRECONDITION_FAILED will be returned if an invalid transition is requested. It is valid to create Step with a state set to COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED will be returned if the state is set to COMPLETE multiple times. - In response: always set - In create/update request: optional
  final pulumi.Input<StepState>? state;
  /// A unique identifier within a Execution for this Step. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response: always set - In create/update request: never set
  final pulumi.Input<String>? stepId;
  /// An execution of a test runner.
  final pulumi.Input<TestExecutionStep>? testExecutionStep;
  /// An execution of a tool (used for steps we don't explicitly support).
  final pulumi.Input<ToolExecutionStep>? toolExecutionStep;

  /// Creates a new [StepArgs].
  /// [completionTime] The time when the step status was set to complete. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  /// [creationTime] The time when the step was created. - In response: always set - In create/update request: never set
  /// [description] A description of this tool For example: mvn clean package -D skipTests=true - In response: present if set by create/update request - In create/update request: optional
  /// [deviceUsageDuration] How much the device resource is used to perform the test. This is the device usage used for billing purpose, which is different from the run_duration, for example, infrastructure failure won't be charged for device usage. PRECONDITION_FAILED will be returned if one attempts to set a device_usage on a step which already has this field set. - In response: present if previously set. - In create request: optional - In update request: optional
  /// [dimensionValue] If the execution containing this step has any dimension_definition set, then this field allows the child to specify the values of the dimensions. The keys must exactly match the dimension_definition of the execution. For example, if the execution has `dimension_definition = ['attempt', 'device']` then a step must define values for those dimensions, eg. `dimension_value = ['attempt': '1', 'device': 'Nexus 6']` If a step does not participate in one dimension of the matrix, the value for that dimension should be empty string. For example, if one of the tests is executed by a runner which does not support retries, the step could have `dimension_value = ['attempt': '', 'device': 'Nexus 6']` If the step does not participate in any dimensions of the matrix, it may leave dimension_value unset. A PRECONDITION_FAILED will be returned if any of the keys do not exist in the dimension_definition of the execution. A PRECONDITION_FAILED will be returned if another step in this execution already has the same name and dimension_value, but differs on other data fields, for example, step field is different. A PRECONDITION_FAILED will be returned if dimension_value is set, and there is a dimension_definition in the execution which is not specified as one of the keys. - In response: present if set by create - In create request: optional - In update request: never set
  /// [executionId] Required.
  /// [hasImages] Whether any of the outputs of this step are images whose thumbnails can be fetched with ListThumbnails. - In response: always set - In create/update request: never set
  /// [historyId] Required.
  /// [labels] Arbitrary user-supplied key/value pairs that are associated with the step. Users are responsible for managing the key namespace such that keys don't accidentally collide. An INVALID_ARGUMENT will be returned if the number of labels exceeds 100 or if the length of any of the keys or values exceeds 100 characters. - In response: always set - In create request: optional - In update request: optional; any new key/value pair will be added to the map, and any new value for an existing key will update that key's value
  /// [multiStep] Details when multiple steps are run with the same configuration as a group. These details can be used identify which group this step is part of. It also identifies the groups 'primary step' which indexes all the group members. - In response: present if previously set. - In create request: optional, set iff this step was performed more than once. - In update request: optional
  /// [name] A short human-readable name to display in the UI. Maximum of 100 characters. For example: Clean build A PRECONDITION_FAILED will be returned upon creating a new step if it shares its name and dimension_value with an existing step. If two steps represent a similar action, but have different dimension values, they should share the same name. For instance, if the same set of tests is run on two different platforms, the two steps should have the same name. - In response: always set - In create request: always set - In update request: never set
  /// [outcome] Classification of the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  /// [project] Optional.
  /// [requestId] A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  /// [runDuration] How long it took for this step to run. If unset, this is set to the difference between creation_time and completion_time when the step is set to the COMPLETE state. In some cases, it is appropriate to set this value separately: For instance, if a step is created, but the operation it represents is queued for a few minutes before it executes, it would be appropriate not to include the time spent queued in its run_duration. PRECONDITION_FAILED will be returned if one attempts to set a run_duration on a step which already has this field set. - In response: present if previously set; always present on COMPLETE step - In create request: optional - In update request: optional
  /// [state] The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -> COMPLETE A PRECONDITION_FAILED will be returned if an invalid transition is requested. It is valid to create Step with a state set to COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED will be returned if the state is set to COMPLETE multiple times. - In response: always set - In create/update request: optional
  /// [stepId] A unique identifier within a Execution for this Step. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response: always set - In create/update request: never set
  /// [testExecutionStep] An execution of a test runner.
  /// [toolExecutionStep] An execution of a tool (used for steps we don't explicitly support).
  StepArgs({
    this.completionTime,
    this.creationTime,
    this.description,
    this.deviceUsageDuration,
    this.dimensionValue,
    required this.executionId,
    this.hasImages,
    required this.historyId,
    this.labels,
    this.multiStep,
    this.name,
    this.outcome,
    this.project,
    this.requestId,
    this.runDuration,
    this.state,
    this.stepId,
    this.testExecutionStep,
    this.toolExecutionStep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': ?pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(completionTime, (value) => value.toMap()),
      'creationTime': ?pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(creationTime, (value) => value.toMap()),
      'description': ?description,
      'deviceUsageDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(deviceUsageDuration, (value) => value.toMap()),
      'dimensionValue': ?pulumi.Input.mapOptionalInputValue<List<StepDimensionValueEntry>, List<Map<String, dynamic>>>(dimensionValue, (value) => pulumi.Input.encodeList<StepDimensionValueEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionId': executionId,
      'hasImages': ?hasImages,
      'historyId': historyId,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<StepLabelsEntry>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<StepLabelsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiStep': ?pulumi.Input.mapOptionalInputValue<MultiStep, Map<String, dynamic>>(multiStep, (value) => value.toMap()),
      'name': ?name,
      'outcome': ?pulumi.Input.mapOptionalInputValue<Outcome, Map<String, dynamic>>(outcome, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'runDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(runDuration, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<StepState, String>(state, (value) => value.value),
      'stepId': ?stepId,
      'testExecutionStep': ?pulumi.Input.mapOptionalInputValue<TestExecutionStep, Map<String, dynamic>>(testExecutionStep, (value) => value.toMap()),
      'toolExecutionStep': ?pulumi.Input.mapOptionalInputValue<ToolExecutionStep, Map<String, dynamic>>(toolExecutionStep, (value) => value.toMap()),
    };
  }

  factory StepArgs.fromMap(Map<String, dynamic> map) {
    return StepArgs(
      completionTime: map['completionTime'] == null ? null : (Timestamp.fromMap((map['completionTime'] as Map).cast<String, dynamic>())).input(),
      creationTime: map['creationTime'] == null ? null : (Timestamp.fromMap((map['creationTime'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      deviceUsageDuration: map['deviceUsageDuration'] == null ? null : (Duration.fromMap((map['deviceUsageDuration'] as Map).cast<String, dynamic>())).input(),
      dimensionValue: map['dimensionValue'] == null ? null : (pulumi.Input.decodeList<StepDimensionValueEntry>(map['dimensionValue'], (value) => StepDimensionValueEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      executionId: (map['executionId'] as String).input(),
      hasImages: map['hasImages'] == null ? null : (map['hasImages'] as bool).input(),
      historyId: (map['historyId'] as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<StepLabelsEntry>(map['labels'], (value) => StepLabelsEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      multiStep: map['multiStep'] == null ? null : (MultiStep.fromMap((map['multiStep'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outcome: map['outcome'] == null ? null : (Outcome.fromMap((map['outcome'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      runDuration: map['runDuration'] == null ? null : (Duration.fromMap((map['runDuration'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (StepState.fromValue(map['state'] as String)).input(),
      stepId: map['stepId'] == null ? null : (map['stepId'] as String).input(),
      testExecutionStep: map['testExecutionStep'] == null ? null : (TestExecutionStep.fromMap((map['testExecutionStep'] as Map).cast<String, dynamic>())).input(),
      toolExecutionStep: map['toolExecutionStep'] == null ? null : (ToolExecutionStep.fromMap((map['toolExecutionStep'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

