// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_job_schedule.dart';

/// Input properties used for looking up and filtering SynchronizationJob resources.
class SynchronizationJobState {
  /// Whether the provisioning job is enabled. Default state is `true`.
  final pulumi.Input<bool>? enabled;
  /// A `schedule` list as documented below.
  final pulumi.Input<List<SynchronizationJobSchedule>>? schedules;
  /// The ID of the service principal for which this synchronization job should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? servicePrincipalId;
  /// Identifier of the synchronization template this job is based on.
  final pulumi.Input<String>? templateId;

  /// Creates a new [SynchronizationJobState].
  /// [enabled] Whether the provisioning job is enabled. Default state is `true`.
  /// [schedules] A `schedule` list as documented below.
  /// [servicePrincipalId] The ID of the service principal for which this synchronization job should be created. Changing this field forces a new resource to be created.
  /// [templateId] Identifier of the synchronization template this job is based on.
  const SynchronizationJobState({
    this.enabled,
    this.schedules,
    this.servicePrincipalId,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<SynchronizationJobSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<SynchronizationJobSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': ?servicePrincipalId,
      'templateId': ?templateId,
    };
  }

  factory SynchronizationJobState.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SynchronizationJobSchedule>(guardedValue, (value) => SynchronizationJobSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

