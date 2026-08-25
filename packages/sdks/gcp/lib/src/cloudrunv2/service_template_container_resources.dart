// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerResources {
  /// Determines whether CPU is only allocated during requests. True by default if the parent `resources` field is not set. However, if
  /// `resources` is set, this field must be explicitly set to true to preserve the default behavior.
  final pulumi.Input<bool?>? cpuIdle;
  /// Only memory, CPU, and nvidia.com/gpu are supported. Use key `cpu` for CPU limit, `memory` for memory limit, `nvidia.com/gpu` for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6' and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  final pulumi.Input<Map<String, String>?>? limits;
  /// Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  final pulumi.Input<bool?>? startupCpuBoost;

  /// Creates a new [ServiceTemplateContainerResources].
  /// [cpuIdle] Determines whether CPU is only allocated during requests. True by default if the parent `resources` field is not set. However, if
  /// [limits] Only memory, CPU, and nvidia.com/gpu are supported. Use key `cpu` for CPU limit, `memory` for memory limit, `nvidia.com/gpu` for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6' and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  /// [startupCpuBoost] Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  const ServiceTemplateContainerResources({
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

  factory ServiceTemplateContainerResources.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerResources(
      cpuIdle: (() { final guardedValue = map['cpuIdle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      startupCpuBoost: (() { final guardedValue = map['startupCpuBoost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
