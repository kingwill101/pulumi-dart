// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_cloudforce_one_request_priority_get_cloudforce_one_request_priority_args_doc}
/// Arguments for getCloudforceOneRequestPriority.
/// {@endtemplate}
/// {@macro pulumi_index_get_cloudforce_one_request_priority_get_cloudforce_one_request_priority_args_doc}
class GetCloudforceOneRequestPriorityArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// UUID.
  final pulumi.Input<String> priorityId;

  /// Creates a new [GetCloudforceOneRequestPriorityArgs].
  /// [accountId] Identifier.
  /// [priorityId] UUID.
  const GetCloudforceOneRequestPriorityArgs({
    this.accountId,
    required this.priorityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'priorityId': priorityId,
    };
  }

  factory GetCloudforceOneRequestPriorityArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestPriorityArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priorityId: pulumi.Input.fromValue(map['priorityId'] as String),
    );
  }
}
