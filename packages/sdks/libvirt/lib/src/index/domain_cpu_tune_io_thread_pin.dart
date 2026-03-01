// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTuneIoThreadPin {
  /// Specifies which CPUs IO threads can be pinned to, allowing for optimized resource allocation in IO operations.
  final String cpuSet;
  /// Identifies the specific IO thread that can be pinned to designated CPUs, impacting data processing efficiency.
  final double ioThread;

  /// Creates a new [DomainCpuTuneIoThreadPin].
  /// [cpuSet] Specifies which CPUs IO threads can be pinned to, allowing for optimized resource allocation in IO operations.
  /// [ioThread] Identifies the specific IO thread that can be pinned to designated CPUs, impacting data processing efficiency.
  DomainCpuTuneIoThreadPin({
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
      cpuSet: map['cpuSet'] as String,
      ioThread: map['ioThread'] as double,
    );
  }
}

