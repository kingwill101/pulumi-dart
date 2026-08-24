// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_cron_trigger_get_workers_cron_trigger_args_doc}
/// Arguments for getWorkersCronTrigger.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_cron_trigger_get_workers_cron_trigger_args_doc}
class GetWorkersCronTriggerArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;

  /// Creates a new [GetWorkersCronTriggerArgs].
  /// [accountId] Identifier.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const GetWorkersCronTriggerArgs({
    this.accountId,
    required this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'scriptName': scriptName,
    };
  }

  factory GetWorkersCronTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersCronTriggerArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
    );
  }
}
