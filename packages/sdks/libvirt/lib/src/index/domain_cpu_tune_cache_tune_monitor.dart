// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTuneCacheTuneMonitor {
  /// Configures the monitoring level for cache tuning, controlling the granularity of the monitored cache behavior.
  final double? level;
  /// Sets the number of virtual CPUs to monitor for cache tuning, allowing targeted performance observations.
  final String? vcpus;

  /// Creates a new [DomainCpuTuneCacheTuneMonitor].
  /// [level] Configures the monitoring level for cache tuning, controlling the granularity of the monitored cache behavior.
  /// [vcpus] Sets the number of virtual CPUs to monitor for cache tuning, allowing targeted performance observations.
  DomainCpuTuneCacheTuneMonitor({
    this.level,
    this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'vcpus': ?vcpus,
    };
  }

  factory DomainCpuTuneCacheTuneMonitor.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneCacheTuneMonitor(
      level: map['level'] == null ? null : map['level'] as double,
      vcpus: map['vcpus'] == null ? null : map['vcpus'] as String,
    );
  }
}

