// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneIoThreadPin {
  /// Specifies which CPUs IO threads can be pinned to, allowing for optimized resource allocation in IO operations.
  final pulumi.Input<String> cpuSet;
  /// Identifies the specific IO thread that can be pinned to designated CPUs, impacting data processing efficiency.
  final pulumi.Input<double> ioThread;

  /// Creates a new [DomainCpuTuneIoThreadPin].
  /// [cpuSet] Specifies which CPUs IO threads can be pinned to, allowing for optimized resource allocation in IO operations.
  /// [ioThread] Identifies the specific IO thread that can be pinned to designated CPUs, impacting data processing efficiency.
  const DomainCpuTuneIoThreadPin({
    required this.cpuSet,
    required this.ioThread,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuSet': cpuSet,
      'ioThread': ioThread,
    };
  }

  factory DomainCpuTuneIoThreadPin.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneIoThreadPin(
      cpuSet: pulumi.Input.fromValue(map['cpuSet'] as String),
      ioThread: pulumi.Input.fromValue(map['ioThread'] as double),
    );
  }
}
