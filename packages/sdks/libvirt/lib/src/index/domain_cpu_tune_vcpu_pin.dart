// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTuneVcpuPin {
  /// Specifies the CPU set for pinning virtual CPUs, controlling their execution placement on physical processors.
  final String cpuSet;
  /// Identifies which virtual CPU is configured for pinning, allowing precise resource allocation and scheduling.
  final double vcpu;

  /// Creates a new [DomainCpuTuneVcpuPin].
  /// [cpuSet] Specifies the CPU set for pinning virtual CPUs, controlling their execution placement on physical processors.
  /// [vcpu] Identifies which virtual CPU is configured for pinning, allowing precise resource allocation and scheduling.
  DomainCpuTuneVcpuPin({
    required this.cpuSet,
    required this.vcpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuSet': cpuSet,
      'vcpu': vcpu,
    };
  }

  factory DomainCpuTuneVcpuPin.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneVcpuPin(
      cpuSet: map['cpuSet'] as String,
      vcpu: map['vcpu'] as double,
    );
  }
}

