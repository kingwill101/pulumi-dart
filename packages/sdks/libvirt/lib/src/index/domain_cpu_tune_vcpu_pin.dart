// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneVcpuPin {
  /// Specifies the CPU set for pinning virtual CPUs, controlling their execution placement on physical processors.
  final pulumi.Input<String> cpuSet;

  /// Identifies which virtual CPU is configured for pinning, allowing precise resource allocation and scheduling.
  final pulumi.Input<double> vcpu;

  /// Creates a new [DomainCpuTuneVcpuPin].
  /// [cpuSet] Specifies the CPU set for pinning virtual CPUs, controlling their execution placement on physical processors.
  /// [vcpu] Identifies which virtual CPU is configured for pinning, allowing precise resource allocation and scheduling.
  DomainCpuTuneVcpuPin({required this.cpuSet, required this.vcpu});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpuSet': cpuSet, 'vcpu': vcpu};
  }

  factory DomainCpuTuneVcpuPin.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneVcpuPin(
      cpuSet: pulumi.Input.fromValue(map['cpuSet'] as String),
      vcpu: pulumi.Input.fromValue(map['vcpu'] as double),
    );
  }
}
