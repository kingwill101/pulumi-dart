// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTopology {
  /// Sets the number of CPU clusters configured within the domain.
  final double? clusters;
  /// Configures the number of cores allocated to each CPU within the domain topology.
  final double? cores;
  /// Specifies the number of dies configured for the CPUs within the domain topology.
  final double? dies;
  /// Configures the number of CPU sockets defined in the domain's CPU topology.
  final double? sockets;
  /// Sets the number of threads associated with each core in the CPU topology.
  final double? threads;

  /// Creates a new [DomainCpuTopology].
  /// [clusters] Sets the number of CPU clusters configured within the domain.
  /// [cores] Configures the number of cores allocated to each CPU within the domain topology.
  /// [dies] Specifies the number of dies configured for the CPUs within the domain topology.
  /// [sockets] Configures the number of CPU sockets defined in the domain's CPU topology.
  /// [threads] Sets the number of threads associated with each core in the CPU topology.
  DomainCpuTopology({
    this.clusters,
    this.cores,
    this.dies,
    this.sockets,
    this.threads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': ?clusters,
      'cores': ?cores,
      'dies': ?dies,
      'sockets': ?sockets,
      'threads': ?threads,
    };
  }

  factory DomainCpuTopology.fromMap(Map<String, dynamic> map) {
    return DomainCpuTopology(
      clusters: map['clusters'] == null ? null : map['clusters'] as double,
      cores: map['cores'] == null ? null : map['cores'] as double,
      dies: map['dies'] == null ? null : map['dies'] as double,
      sockets: map['sockets'] == null ? null : map['sockets'] as double,
      threads: map['threads'] == null ? null : map['threads'] as double,
    );
  }
}

