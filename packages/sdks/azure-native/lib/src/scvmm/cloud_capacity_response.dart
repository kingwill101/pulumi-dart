// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Capacity model
class CloudCapacityResponse {
  /// CPUCount specifies the maximum number of CPUs that can be allocated in the cloud.
  final pulumi.Input<double>? cpuCount;
  /// MemoryMB specifies a memory usage limit in megabytes.
  final pulumi.Input<double>? memoryMB;
  /// VMCount gives the max number of VMs that can be deployed in the cloud.
  final pulumi.Input<double>? vmCount;

  /// Creates a new [CloudCapacityResponse].
  /// [cpuCount] CPUCount specifies the maximum number of CPUs that can be allocated in the cloud.
  /// [memoryMB] MemoryMB specifies a memory usage limit in megabytes.
  /// [vmCount] VMCount gives the max number of VMs that can be deployed in the cloud.
  const CloudCapacityResponse({
    this.cpuCount,
    this.memoryMB,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'memoryMB': ?memoryMB,
      'vmCount': ?vmCount,
    };
  }

  factory CloudCapacityResponse.fromMap(Map<String, dynamic> map) {
    return CloudCapacityResponse(
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryMB: (() { final guardedValue = map['memoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vmCount: (() { final guardedValue = map['vmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

