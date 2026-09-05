// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTopology {
  /// Sets the number of CPU clusters configured within the domain.
  final pulumi.Input<double?>? clusters;
  /// Configures the number of cores allocated to each CPU within the domain topology.
  final pulumi.Input<double?>? cores;
  /// Specifies the number of dies configured for the CPUs within the domain topology.
  final pulumi.Input<double?>? dies;
  /// Configures the number of CPU sockets defined in the domain's CPU topology.
  final pulumi.Input<double?>? sockets;
  /// Sets the number of threads associated with each core in the CPU topology.
  final pulumi.Input<double?>? threads;

  /// Creates a new [DomainCpuTopology].
  /// [clusters] Sets the number of CPU clusters configured within the domain.
  /// [cores] Configures the number of cores allocated to each CPU within the domain topology.
  /// [dies] Specifies the number of dies configured for the CPUs within the domain topology.
  /// [sockets] Configures the number of CPU sockets defined in the domain's CPU topology.
  /// [threads] Sets the number of threads associated with each core in the CPU topology.
  const DomainCpuTopology({
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
      clusters: (() { final guardedValue = map['clusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      cores: (() { final guardedValue = map['cores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      dies: (() { final guardedValue = map['dies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sockets: (() { final guardedValue = map['sockets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      threads: (() { final guardedValue = map['threads']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
