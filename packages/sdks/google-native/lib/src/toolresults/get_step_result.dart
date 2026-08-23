// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';
import 'multi_step_response.dart';
import 'outcome_response.dart';
import 'step_dimension_value_entry_response.dart';
import 'step_labels_entry_response.dart';
import 'test_execution_step_response.dart';
import 'timestamp_response.dart';
import 'tool_execution_step_response.dart';

/// Result data returned by getStep.
class GetStepResult {
  /// The time when the step status was set to complete. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  final TimestampResponse completionTime;
  /// The time when the step was created. - In response: always set - In create/update request: never set
  final TimestampResponse creationTime;
  /// A description of this tool For example: mvn clean package -D skipTests=true - In response: present if set by create/update request - In create/update request: optional
  final String description;
  /// How much the device resource is used to perform the test. This is the device usage used for billing purpose, which is different from the run_duration, for example, infrastructure failure won't be charged for device usage. PRECONDITION_FAILED will be returned if one attempts to set a device_usage on a step which already has this field set. - In response: present if previously set. - In create request: optional - In update request: optional
  final DurationResponse deviceUsageDuration;
  /// If the execution containing this step has any dimension_definition set, then this field allows the child to specify the values of the dimensions. The keys must exactly match the dimension_definition of the execution. For example, if the execution has `dimension_definition = ['attempt', 'device']` then a step must define values for those dimensions, eg. `dimension_value = ['attempt': '1', 'device': 'Nexus 6']` If a step does not participate in one dimension of the matrix, the value for that dimension should be empty string. For example, if one of the tests is executed by a runner which does not support retries, the step could have `dimension_value = ['attempt': '', 'device': 'Nexus 6']` If the step does not participate in any dimensions of the matrix, it may leave dimension_value unset. A PRECONDITION_FAILED will be returned if any of the keys do not exist in the dimension_definition of the execution. A PRECONDITION_FAILED will be returned if another step in this execution already has the same name and dimension_value, but differs on other data fields, for example, step field is different. A PRECONDITION_FAILED will be returned if dimension_value is set, and there is a dimension_definition in the execution which is not specified as one of the keys. - In response: present if set by create - In create request: optional - In update request: never set
  final List<StepDimensionValueEntryResponse> dimensionValue;
  /// Whether any of the outputs of this step are images whose thumbnails can be fetched with ListThumbnails. - In response: always set - In create/update request: never set
  final bool hasImages;
  /// Arbitrary user-supplied key/value pairs that are associated with the step. Users are responsible for managing the key namespace such that keys don't accidentally collide. An INVALID_ARGUMENT will be returned if the number of labels exceeds 100 or if the length of any of the keys or values exceeds 100 characters. - In response: always set - In create request: optional - In update request: optional; any new key/value pair will be added to the map, and any new value for an existing key will update that key's value
  final List<StepLabelsEntryResponse> labels;
  /// Details when multiple steps are run with the same configuration as a group. These details can be used identify which group this step is part of. It also identifies the groups 'primary step' which indexes all the group members. - In response: present if previously set. - In create request: optional, set iff this step was performed more than once. - In update request: optional
  final MultiStepResponse multiStep;
  /// A short human-readable name to display in the UI. Maximum of 100 characters. For example: Clean build A PRECONDITION_FAILED will be returned upon creating a new step if it shares its name and dimension_value with an existing step. If two steps represent a similar action, but have different dimension values, they should share the same name. For instance, if the same set of tests is run on two different platforms, the two steps should have the same name. - In response: always set - In create request: always set - In update request: never set
  final String name;
  /// Classification of the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  final OutcomeResponse outcome;
  /// How long it took for this step to run. If unset, this is set to the difference between creation_time and completion_time when the step is set to the COMPLETE state. In some cases, it is appropriate to set this value separately: For instance, if a step is created, but the operation it represents is queued for a few minutes before it executes, it would be appropriate not to include the time spent queued in its run_duration. PRECONDITION_FAILED will be returned if one attempts to set a run_duration on a step which already has this field set. - In response: present if previously set; always present on COMPLETE step - In create request: optional - In update request: optional
  final DurationResponse runDuration;
  /// The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -&gt; COMPLETE A PRECONDITION_FAILED will be returned if an invalid transition is requested. It is valid to create Step with a state set to COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED will be returned if the state is set to COMPLETE multiple times. - In response: always set - In create/update request: optional
  final String state;
  /// A unique identifier within a Execution for this Step. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response: always set - In create/update request: never set
  final String stepId;
  /// An execution of a test runner.
  final TestExecutionStepResponse testExecutionStep;
  /// An execution of a tool (used for steps we don't explicitly support).
  final ToolExecutionStepResponse toolExecutionStep;

  /// Creates a new [GetStepResult].
  /// [completionTime] The time when the step status was set to complete. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  /// [creationTime] The time when the step was created. - In response: always set - In create/update request: never set
  /// [description] A description of this tool For example: mvn clean package -D skipTests=true - In response: present if set by create/update request - In create/update request: optional
  /// [deviceUsageDuration] How much the device resource is used to perform the test. This is the device usage used for billing purpose, which is different from the run_duration, for example, infrastructure failure won't be charged for device usage. PRECONDITION_FAILED will be returned if one attempts to set a device_usage on a step which already has this field set. - In response: present if previously set. - In create request: optional - In update request: optional
  /// [dimensionValue] If the execution containing this step has any dimension_definition set, then this field allows the child to specify the values of the dimensions. The keys must exactly match the dimension_definition of the execution. For example, if the execution has `dimension_definition = ['attempt', 'device']` then a step must define values for those dimensions, eg. `dimension_value = ['attempt': '1', 'device': 'Nexus 6']` If a step does not participate in one dimension of the matrix, the value for that dimension should be empty string. For example, if one of the tests is executed by a runner which does not support retries, the step could have `dimension_value = ['attempt': '', 'device': 'Nexus 6']` If the step does not participate in any dimensions of the matrix, it may leave dimension_value unset. A PRECONDITION_FAILED will be returned if any of the keys do not exist in the dimension_definition of the execution. A PRECONDITION_FAILED will be returned if another step in this execution already has the same name and dimension_value, but differs on other data fields, for example, step field is different. A PRECONDITION_FAILED will be returned if dimension_value is set, and there is a dimension_definition in the execution which is not specified as one of the keys. - In response: present if set by create - In create request: optional - In update request: never set
  /// [hasImages] Whether any of the outputs of this step are images whose thumbnails can be fetched with ListThumbnails. - In response: always set - In create/update request: never set
  /// [labels] Arbitrary user-supplied key/value pairs that are associated with the step. Users are responsible for managing the key namespace such that keys don't accidentally collide. An INVALID_ARGUMENT will be returned if the number of labels exceeds 100 or if the length of any of the keys or values exceeds 100 characters. - In response: always set - In create request: optional - In update request: optional; any new key/value pair will be added to the map, and any new value for an existing key will update that key's value
  /// [multiStep] Details when multiple steps are run with the same configuration as a group. These details can be used identify which group this step is part of. It also identifies the groups 'primary step' which indexes all the group members. - In response: present if previously set. - In create request: optional, set iff this step was performed more than once. - In update request: optional
  /// [name] A short human-readable name to display in the UI. Maximum of 100 characters. For example: Clean build A PRECONDITION_FAILED will be returned upon creating a new step if it shares its name and dimension_value with an existing step. If two steps represent a similar action, but have different dimension values, they should share the same name. For instance, if the same set of tests is run on two different platforms, the two steps should have the same name. - In response: always set - In create request: always set - In update request: never set
  /// [outcome] Classification of the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  /// [runDuration] How long it took for this step to run. If unset, this is set to the difference between creation_time and completion_time when the step is set to the COMPLETE state. In some cases, it is appropriate to set this value separately: For instance, if a step is created, but the operation it represents is queued for a few minutes before it executes, it would be appropriate not to include the time spent queued in its run_duration. PRECONDITION_FAILED will be returned if one attempts to set a run_duration on a step which already has this field set. - In response: present if previously set; always present on COMPLETE step - In create request: optional - In update request: optional
  /// [state] The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -&gt; COMPLETE A PRECONDITION_FAILED will be returned if an invalid transition is requested. It is valid to create Step with a state set to COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED will be returned if the state is set to COMPLETE multiple times. - In response: always set - In create/update request: optional
  /// [stepId] A unique identifier within a Execution for this Step. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response: always set - In create/update request: never set
  /// [testExecutionStep] An execution of a test runner.
  /// [toolExecutionStep] An execution of a tool (used for steps we don't explicitly support).
  const GetStepResult({
    required this.completionTime,
    required this.creationTime,
    required this.description,
    required this.deviceUsageDuration,
    required this.dimensionValue,
    required this.hasImages,
    required this.labels,
    required this.multiStep,
    required this.name,
    required this.outcome,
    required this.runDuration,
    required this.state,
    required this.stepId,
    required this.testExecutionStep,
    required this.toolExecutionStep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': completionTime.toMap(),
      'creationTime': creationTime.toMap(),
      'description': description,
      'deviceUsageDuration': deviceUsageDuration.toMap(),
      'dimensionValue': pulumi.Input.encodeList<StepDimensionValueEntryResponse, Map<String, dynamic>>(dimensionValue, (value) => value.toMap()),
      'hasImages': hasImages,
      'labels': pulumi.Input.encodeList<StepLabelsEntryResponse, Map<String, dynamic>>(labels, (value) => value.toMap()),
      'multiStep': multiStep.toMap(),
      'name': name,
      'outcome': outcome.toMap(),
      'runDuration': runDuration.toMap(),
      'state': state,
      'stepId': stepId,
      'testExecutionStep': testExecutionStep.toMap(),
      'toolExecutionStep': toolExecutionStep.toMap(),
    };
  }

  factory GetStepResult.fromMap(Map<String, dynamic> map) {
    return GetStepResult(
      completionTime: TimestampResponse.fromMap((map['completionTime']! as Map).cast<String, dynamic>()),
      creationTime: TimestampResponse.fromMap((map['creationTime']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      deviceUsageDuration: DurationResponse.fromMap((map['deviceUsageDuration']! as Map).cast<String, dynamic>()),
      dimensionValue: pulumi.Input.decodeList<StepDimensionValueEntryResponse>(map['dimensionValue']!, (value) => StepDimensionValueEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      hasImages: map['hasImages'] as bool,
      labels: pulumi.Input.decodeList<StepLabelsEntryResponse>(map['labels']!, (value) => StepLabelsEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      multiStep: MultiStepResponse.fromMap((map['multiStep']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      outcome: OutcomeResponse.fromMap((map['outcome']! as Map).cast<String, dynamic>()),
      runDuration: DurationResponse.fromMap((map['runDuration']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stepId: map['stepId'] as String,
      testExecutionStep: TestExecutionStepResponse.fromMap((map['testExecutionStep']! as Map).cast<String, dynamic>()),
      toolExecutionStep: ToolExecutionStepResponse.fromMap((map['toolExecutionStep']! as Map).cast<String, dynamic>()),
    );
  }
}
