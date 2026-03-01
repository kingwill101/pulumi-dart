// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'end_condition.dart';

/// {@template pulumi_runtimeconfig_v1beta1_waiter_args_doc}
/// The set of arguments for Waiter.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_waiter_args_doc}
class WaiterArgs {
  final pulumi.Input<String> configId;
  /// [Optional] The failure condition of this waiter. If this condition is met, `done` will be set to `true` and the `error` code will be set to `ABORTED`. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated. This value is optional; if no failure condition is set, the only failure scenario will be a timeout.
  final pulumi.Input<EndCondition>? failure;
  /// The name of the Waiter resource, in the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME] The `[PROJECT_ID]` must be a valid Google Cloud project ID, the `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the `[WAITER_NAME]` must match RFC 1035 segment specification, and the length of `[WAITER_NAME]` must be less than 64 bytes. After you create a Waiter resource, you cannot change the resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional but recommended unique `request_id`. If the server receives two `create()` requests with the same `request_id`, then the second request will be ignored and the first resource created and stored in the backend is returned. Empty `request_id` fields are ignored. It is responsibility of the client to ensure uniqueness of the `request_id` strings. `request_id` strings are limited to 64 characters.
  final pulumi.Input<String>? requestId;
  /// [Required] The success condition. If this condition is met, `done` will be set to `true` and the `error` value will remain unset. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated.
  final pulumi.Input<EndCondition>? success;
  /// [Required] Specifies the timeout of the waiter in seconds, beginning from the instant that `waiters().create` method is called. If this time elapses before the success or failure conditions are met, the waiter fails and sets the `error` code to `DEADLINE_EXCEEDED`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [WaiterArgs].
  /// [configId] Required.
  /// [failure] [Optional] The failure condition of this waiter. If this condition is met, `done` will be set to `true` and the `error` code will be set to `ABORTED`. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated. This value is optional; if no failure condition is set, the only failure scenario will be a timeout.
  /// [name] The name of the Waiter resource, in the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME] The `[PROJECT_ID]` must be a valid Google Cloud project ID, the `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the `[WAITER_NAME]` must match RFC 1035 segment specification, and the length of `[WAITER_NAME]` must be less than 64 bytes. After you create a Waiter resource, you cannot change the resource name.
  /// [project] Optional.
  /// [requestId] An optional but recommended unique `request_id`. If the server receives two `create()` requests with the same `request_id`, then the second request will be ignored and the first resource created and stored in the backend is returned. Empty `request_id` fields are ignored. It is responsibility of the client to ensure uniqueness of the `request_id` strings. `request_id` strings are limited to 64 characters.
  /// [success] [Required] The success condition. If this condition is met, `done` will be set to `true` and the `error` value will remain unset. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated.
  /// [timeout] [Required] Specifies the timeout of the waiter in seconds, beginning from the instant that `waiters().create` method is called. If this time elapses before the success or failure conditions are met, the waiter fails and sets the `error` code to `DEADLINE_EXCEEDED`.
  WaiterArgs({
    required pulumi.Output<String> configId,
    pulumi.Output<EndCondition>? failure,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<EndCondition>? success,
    pulumi.Output<String>? timeout,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      failure = pulumi.Input.asOptionalInput<EndCondition>(failure),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      success = pulumi.Input.asOptionalInput<EndCondition>(success),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'failure': ?pulumi.Input.mapOptionalInputValue<EndCondition, Map<String, dynamic>>(failure, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'success': ?pulumi.Input.mapOptionalInputValue<EndCondition, Map<String, dynamic>>(success, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory WaiterArgs.fromMap(Map<String, dynamic> map) {
    return WaiterArgs(
      configId: pulumi.Output.create<String>(map['configId'] as String),
      failure: map['failure'] == null ? null : pulumi.Output.create<EndCondition>(EndCondition.fromMap((map['failure'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      success: map['success'] == null ? null : pulumi.Output.create<EndCondition>(EndCondition.fromMap((map['success'] as Map).cast<String, dynamic>())),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<String>(map['timeout'] as String),
    );
  }
}

