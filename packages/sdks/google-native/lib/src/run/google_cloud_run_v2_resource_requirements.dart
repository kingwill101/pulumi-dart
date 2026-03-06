// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceRequirements describes the compute resource requirements.
class GoogleCloudRunV2ResourceRequirements {
  /// Determines whether CPU should be throttled or not outside of requests.
  final pulumi.Input<bool>? cpuIdle;
  /// Only ´memory´ and 'cpu' are supported. Notes: * The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  final pulumi.Input<Map<String, String>>? limits;
  /// Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  final pulumi.Input<bool>? startupCpuBoost;

  /// Creates a new [GoogleCloudRunV2ResourceRequirements].
  /// [cpuIdle] Determines whether CPU should be throttled or not outside of requests.
  /// [limits] Only ´memory´ and 'cpu' are supported. Notes: * The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  /// [startupCpuBoost] Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  const GoogleCloudRunV2ResourceRequirements({
    this.cpuIdle,
    this.limits,
    this.startupCpuBoost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuIdle': ?cpuIdle,
      'limits': ?limits,
      'startupCpuBoost': ?startupCpuBoost,
    };
  }

  factory GoogleCloudRunV2ResourceRequirements.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ResourceRequirements(
      cpuIdle: (() { final guardedValue = map['cpuIdle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      startupCpuBoost: (() { final guardedValue = map['startupCpuBoost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

