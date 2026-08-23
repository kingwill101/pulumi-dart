// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerAutoHealingPolicyResponseComputeBeta {
  /// The URL for the health check that signals autohealing.
  final pulumi.Input<String> healthCheck;
  /// The initial delay is the number of seconds that a new VM takes to initialize and run its startup script. During a VM's initial delay period, the MIG ignores unsuccessful health checks because the VM might be in the startup process. This prevents the MIG from prematurely recreating a VM. If the health check receives a healthy response during the initial delay, it indicates that the startup process is complete and the VM is ready. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  final pulumi.Input<int> initialDelaySec;

  /// Creates a new [InstanceGroupManagerAutoHealingPolicyResponseComputeBeta].
  /// [healthCheck] The URL for the health check that signals autohealing.
  /// [initialDelaySec] The initial delay is the number of seconds that a new VM takes to initialize and run its startup script. During a VM's initial delay period, the MIG ignores unsuccessful health checks because the VM might be in the startup process. This prevents the MIG from prematurely recreating a VM. If the health check receives a healthy response during the initial delay, it indicates that the startup process is complete and the VM is ready. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  const InstanceGroupManagerAutoHealingPolicyResponseComputeBeta({
    required this.healthCheck,
    required this.initialDelaySec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'initialDelaySec': initialDelaySec,
    };
  }

  factory InstanceGroupManagerAutoHealingPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerAutoHealingPolicyResponseComputeBeta(
      healthCheck: pulumi.Input.fromValue(map['healthCheck'] as String),
      initialDelaySec: pulumi.Input.fromValue(map['initialDelaySec'] as int),
    );
  }
}
