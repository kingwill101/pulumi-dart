// ignore_for_file: unused_element, unnecessary_cast

import 'end_condition_response.dart';
import 'status_response.dart';

/// Result data returned by getWaiter.
class GetWaiterResult {
  /// The instant at which this Waiter resource was created. Adding the value of `timeout` to this instant yields the timeout deadline for the waiter.
  final String createTime;
  /// If the value is `false`, it means the waiter is still waiting for one of its conditions to be met. If true, the waiter has finished. If the waiter finished due to a timeout or failure, `error` will be set.
  final bool done;
  /// If the waiter ended due to a failure or timeout, this value will be set.
  final StatusResponse error;
  /// [Optional] The failure condition of this waiter. If this condition is met, `done` will be set to `true` and the `error` code will be set to `ABORTED`. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated. This value is optional; if no failure condition is set, the only failure scenario will be a timeout.
  final EndConditionResponse failure;
  /// The name of the Waiter resource, in the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME] The `[PROJECT_ID]` must be a valid Google Cloud project ID, the `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the `[WAITER_NAME]` must match RFC 1035 segment specification, and the length of `[WAITER_NAME]` must be less than 64 bytes. After you create a Waiter resource, you cannot change the resource name.
  final String name;
  /// [Required] The success condition. If this condition is met, `done` will be set to `true` and the `error` value will remain unset. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated.
  final EndConditionResponse success;
  /// [Required] Specifies the timeout of the waiter in seconds, beginning from the instant that `waiters().create` method is called. If this time elapses before the success or failure conditions are met, the waiter fails and sets the `error` code to `DEADLINE_EXCEEDED`.
  final String timeout;

  /// Creates a new [GetWaiterResult].
  /// [createTime] The instant at which this Waiter resource was created. Adding the value of `timeout` to this instant yields the timeout deadline for the waiter.
  /// [done] If the value is `false`, it means the waiter is still waiting for one of its conditions to be met. If true, the waiter has finished. If the waiter finished due to a timeout or failure, `error` will be set.
  /// [error] If the waiter ended due to a failure or timeout, this value will be set.
  /// [failure] [Optional] The failure condition of this waiter. If this condition is met, `done` will be set to `true` and the `error` code will be set to `ABORTED`. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated. This value is optional; if no failure condition is set, the only failure scenario will be a timeout.
  /// [name] The name of the Waiter resource, in the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME] The `[PROJECT_ID]` must be a valid Google Cloud project ID, the `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the `[WAITER_NAME]` must match RFC 1035 segment specification, and the length of `[WAITER_NAME]` must be less than 64 bytes. After you create a Waiter resource, you cannot change the resource name.
  /// [success] [Required] The success condition. If this condition is met, `done` will be set to `true` and the `error` value will remain unset. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated.
  /// [timeout] [Required] Specifies the timeout of the waiter in seconds, beginning from the instant that `waiters().create` method is called. If this time elapses before the success or failure conditions are met, the waiter fails and sets the `error` code to `DEADLINE_EXCEEDED`.
  const GetWaiterResult({
    required this.createTime,
    required this.done,
    required this.error,
    required this.failure,
    required this.name,
    required this.success,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'done': done,
      'error': error.toMap(),
      'failure': failure.toMap(),
      'name': name,
      'success': success.toMap(),
      'timeout': timeout,
    };
  }

  factory GetWaiterResult.fromMap(Map<String, dynamic> map) {
    return GetWaiterResult(
      createTime: map['createTime'] as String,
      done: map['done'] as bool,
      error: StatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>()),
      failure: EndConditionResponse.fromMap((map['failure']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      success: EndConditionResponse.fromMap((map['success']! as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
    );
  }
}
