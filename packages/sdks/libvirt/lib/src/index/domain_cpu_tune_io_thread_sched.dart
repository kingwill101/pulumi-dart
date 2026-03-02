// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneIoThreadSched {
  /// Specifies the number of IO threads to schedule, influencing concurrent IO operations for the domain's workloads.
  final pulumi.Input<String> ioThreads;
  /// Sets the priority for IO thread scheduling, affecting their processing precedence relative to other tasks.
  final pulumi.Input<double>? priority;
  /// Configures the specific scheduler type for IO threads, impacting how resources are allocated and handled.
  final pulumi.Input<String>? scheduler;

  /// Creates a new [DomainCpuTuneIoThreadSched].
  /// [ioThreads] Specifies the number of IO threads to schedule, influencing concurrent IO operations for the domain's workloads.
  /// [priority] Sets the priority for IO thread scheduling, affecting their processing precedence relative to other tasks.
  /// [scheduler] Configures the specific scheduler type for IO threads, impacting how resources are allocated and handled.
  DomainCpuTuneIoThreadSched({
    required this.ioThreads,
    this.priority,
    this.scheduler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ioThreads': ioThreads,
      'priority': ?priority,
      'scheduler': ?scheduler,
    };
  }

  factory DomainCpuTuneIoThreadSched.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneIoThreadSched(
      ioThreads: (map['ioThreads'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as double).input(),
      scheduler: map['scheduler'] == null ? null : (map['scheduler']! as String).input(),
    );
  }
}

