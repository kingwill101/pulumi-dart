// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fixed_or_percent.dart';
import 'instance_group_manager_auto_healing_policy_auto_healing_triggers.dart';

class InstanceGroupManagerAutoHealingPolicy {
  /// Restricts what triggers autohealing.
  final pulumi.Input<InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers>? autoHealingTriggers;
  /// The URL for the health check that signals autohealing.
  final pulumi.Input<String>? healthCheck;
  /// The initial delay is the number of seconds that a new VM takes to initialize and run its startup script. During a VM's initial delay period, the MIG ignores unsuccessful health checks because the VM might be in the startup process. This prevents the MIG from prematurely recreating a VM. If the health check receives a healthy response during the initial delay, it indicates that the startup process is complete and the VM is ready. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  final pulumi.Input<int>? initialDelaySec;
  /// Maximum number of instances that can be unavailable when autohealing. When 'percent' is used, the value is rounded if necessary. The instance is considered available if all of the following conditions are satisfied: 1. Instance's status is RUNNING. 2. Instance's currentAction is NONE (in particular its liveness health check result was observed to be HEALTHY at least once as it passed VERIFYING). 3. There is no outgoing action on an instance triggered by IGM. By default, number of concurrently autohealed instances is smaller than the managed instance group target size. However, if a zonal managed instance group has only one instance, or a regional managed instance group has only one instance per zone, autohealing will recreate these instances when they become unhealthy.
  final pulumi.Input<FixedOrPercent>? maxUnavailable;

  /// Creates a new [InstanceGroupManagerAutoHealingPolicy].
  /// [autoHealingTriggers] Restricts what triggers autohealing.
  /// [healthCheck] The URL for the health check that signals autohealing.
  /// [initialDelaySec] The initial delay is the number of seconds that a new VM takes to initialize and run its startup script. During a VM's initial delay period, the MIG ignores unsuccessful health checks because the VM might be in the startup process. This prevents the MIG from prematurely recreating a VM. If the health check receives a healthy response during the initial delay, it indicates that the startup process is complete and the VM is ready. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  /// [maxUnavailable] Maximum number of instances that can be unavailable when autohealing. When 'percent' is used, the value is rounded if necessary. The instance is considered available if all of the following conditions are satisfied: 1. Instance's status is RUNNING. 2. Instance's currentAction is NONE (in particular its liveness health check result was observed to be HEALTHY at least once as it passed VERIFYING). 3. There is no outgoing action on an instance triggered by IGM. By default, number of concurrently autohealed instances is smaller than the managed instance group target size. However, if a zonal managed instance group has only one instance, or a regional managed instance group has only one instance per zone, autohealing will recreate these instances when they become unhealthy.
  InstanceGroupManagerAutoHealingPolicy({
    this.autoHealingTriggers,
    this.healthCheck,
    this.initialDelaySec,
    this.maxUnavailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoHealingTriggers': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers, Map<String, dynamic>>(autoHealingTriggers, (value) => value.toMap()),
      'healthCheck': ?healthCheck,
      'initialDelaySec': ?initialDelaySec,
      'maxUnavailable': ?pulumi.Input.mapOptionalInputValue<FixedOrPercent, Map<String, dynamic>>(maxUnavailable, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerAutoHealingPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerAutoHealingPolicy(
      autoHealingTriggers: map['autoHealingTriggers'] == null ? null : (InstanceGroupManagerAutoHealingPolicyAutoHealingTriggers.fromMap((map['autoHealingTriggers'] as Map).cast<String, dynamic>())).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck'] as String).input(),
      initialDelaySec: map['initialDelaySec'] == null ? null : (map['initialDelaySec'] as int).input(),
      maxUnavailable: map['maxUnavailable'] == null ? null : (FixedOrPercent.fromMap((map['maxUnavailable'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

