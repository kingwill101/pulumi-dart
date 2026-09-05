// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneMemoryTuneMonitor {
  /// Sets the monitoring level for memory tuning, which determines how detailed the monitoring information is.
  final pulumi.Input<double?>? level;
  /// Specifies the number of virtual CPUs to monitor in the context of memory tuning, focusing resource analysis.
  final pulumi.Input<String?>? vcpus;

  /// Creates a new [DomainCpuTuneMemoryTuneMonitor].
  /// [level] Sets the monitoring level for memory tuning, which determines how detailed the monitoring information is.
  /// [vcpus] Specifies the number of virtual CPUs to monitor in the context of memory tuning, focusing resource analysis.
  const DomainCpuTuneMemoryTuneMonitor({
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
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      vcpus: (() { final guardedValue = map['vcpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
