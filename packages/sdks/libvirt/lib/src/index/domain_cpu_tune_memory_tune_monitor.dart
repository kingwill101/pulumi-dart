// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTuneMemoryTuneMonitor {
  /// Sets the monitoring level for memory tuning, which determines how detailed the monitoring information is.
  final double? level;
  /// Specifies the number of virtual CPUs to monitor in the context of memory tuning, focusing resource analysis.
  final String? vcpus;

  /// Creates a new [DomainCpuTuneMemoryTuneMonitor].
  /// [level] Sets the monitoring level for memory tuning, which determines how detailed the monitoring information is.
  /// [vcpus] Specifies the number of virtual CPUs to monitor in the context of memory tuning, focusing resource analysis.
  DomainCpuTuneMemoryTuneMonitor({
    this.level,
    this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'vcpus': ?vcpus,
    };
  }

  factory DomainCpuTuneMemoryTuneMonitor.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneMemoryTuneMonitor(
      level: map['level'] == null ? null : map['level'] as double,
      vcpus: map['vcpus'] == null ? null : map['vcpus'] as String,
    );
  }
}

