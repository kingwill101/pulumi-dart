// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_cron_trigger_schedule.dart';

/// Result data returned by getWorkersCronTrigger.
class GetWorkersCronTriggerResult {
  /// Identifier.
  final String? accountId;
  /// Name of the script, used in URLs and route configuration.
  final String? id;
  final List<GetWorkersCronTriggerSchedule>? schedules;
  /// Name of the script, used in URLs and route configuration.
  final String? scriptName;

  /// Creates a new [GetWorkersCronTriggerResult].
  /// [accountId] Identifier.
  /// [id] Name of the script, used in URLs and route configuration.
  /// [schedules] Optional.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const GetWorkersCronTriggerResult({
    this.accountId,
    this.id,
    this.schedules,
    this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'schedules': ?(() { final guardedValue = schedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkersCronTriggerSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scriptName': ?scriptName,
    };
  }

  factory GetWorkersCronTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersCronTriggerResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkersCronTriggerSchedule>(guardedValue, (value) => GetWorkersCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
