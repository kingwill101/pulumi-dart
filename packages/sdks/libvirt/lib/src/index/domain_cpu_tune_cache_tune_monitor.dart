// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneCacheTuneMonitor {
  /// Configures the monitoring level for cache tuning, controlling the granularity of the monitored cache behavior.
  final pulumi.Input<double>? level;
  /// Sets the number of virtual CPUs to monitor for cache tuning, allowing targeted performance observations.
  final pulumi.Input<String>? vcpus;

  /// Creates a new [DomainCpuTuneCacheTuneMonitor].
  /// [level] Configures the monitoring level for cache tuning, controlling the granularity of the monitored cache behavior.
  /// [vcpus] Sets the number of virtual CPUs to monitor for cache tuning, allowing targeted performance observations.
  const DomainCpuTuneCacheTuneMonitor({
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
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vcpus: (() { final guardedValue = map['vcpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
