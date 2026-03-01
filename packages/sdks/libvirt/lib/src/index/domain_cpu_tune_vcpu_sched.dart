// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTuneVcpuSched {
  /// Sets the priority for virtual CPU scheduling, affecting execution order between competing CPU tasks.
  final double? priority;
  /// Specifies the type of scheduler for virtual CPUs, determining how they share and compete for CPU resources.
  final String? scheduler;
  /// Configures the specific virtual CPUs affected by the scheduling policies, influencing performance and resource use.
  final String vcpus;

  /// Creates a new [DomainCpuTuneVcpuSched].
  /// [priority] Sets the priority for virtual CPU scheduling, affecting execution order between competing CPU tasks.
  /// [scheduler] Specifies the type of scheduler for virtual CPUs, determining how they share and compete for CPU resources.
  /// [vcpus] Configures the specific virtual CPUs affected by the scheduling policies, influencing performance and resource use.
  DomainCpuTuneVcpuSched({
    this.priority,
    this.scheduler,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'scheduler': ?scheduler,
      'vcpus': vcpus,
    };
  }

  factory DomainCpuTuneVcpuSched.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneVcpuSched(
      priority: map['priority'] == null ? null : map['priority'] as double,
      scheduler: map['scheduler'] == null ? null : map['scheduler'] as String,
      vcpus: map['vcpus'] as String,
    );
  }
}

