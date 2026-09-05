// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneVcpuSched {
  /// Sets the priority for virtual CPU scheduling, affecting execution order between competing CPU tasks.
  final pulumi.Input<double?>? priority;
  /// Specifies the type of scheduler for virtual CPUs, determining how they share and compete for CPU resources.
  final pulumi.Input<String?>? scheduler;
  /// Configures the specific virtual CPUs affected by the scheduling policies, influencing performance and resource use.
  final pulumi.Input<String> vcpus;

  /// Creates a new [DomainCpuTuneVcpuSched].
  /// [priority] Sets the priority for virtual CPU scheduling, affecting execution order between competing CPU tasks.
  /// [scheduler] Specifies the type of scheduler for virtual CPUs, determining how they share and compete for CPU resources.
  /// [vcpus] Configures the specific virtual CPUs affected by the scheduling policies, influencing performance and resource use.
  const DomainCpuTuneVcpuSched({
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
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      scheduler: (() { final guardedValue = map['scheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcpus: pulumi.Input.fromValue(map['vcpus'] as String),
    );
  }
}
