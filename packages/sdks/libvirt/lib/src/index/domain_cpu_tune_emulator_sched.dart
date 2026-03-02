// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneEmulatorSched {
  /// Sets the priority level for the emulator's scheduling, influencing its responsiveness relative to other processes.
  final pulumi.Input<double>? priority;
  /// Specifies the scheduler type for the emulator, determining how tasks are scheduled and executed on CPUs.
  final pulumi.Input<String>? scheduler;

  /// Creates a new [DomainCpuTuneEmulatorSched].
  /// [priority] Sets the priority level for the emulator's scheduling, influencing its responsiveness relative to other processes.
  /// [scheduler] Specifies the scheduler type for the emulator, determining how tasks are scheduled and executed on CPUs.
  DomainCpuTuneEmulatorSched({
    this.priority,
    this.scheduler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'scheduler': ?scheduler,
    };
  }

  factory DomainCpuTuneEmulatorSched.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneEmulatorSched(
      priority: map['priority'] == null ? null : (map['priority'] as double).input(),
      scheduler: map['scheduler'] == null ? null : (map['scheduler'] as String).input(),
    );
  }
}

