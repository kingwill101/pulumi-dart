// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNodeInfo.
class GetNodeInfoResult {
  /// Number of CPU cores per socket.
  final double? cpuCoresPerSocket;
  /// Total number of logical CPU cores available on the host.
  final double? cpuCoresTotal;
  /// CPU model name (e.g., 'x86_64').
  final String? cpuModel;
  /// Number of CPU sockets on the host.
  final double? cpuSockets;
  /// Number of threads per CPU core (e.g., 2 for hyper-threading).
  final double? cpuThreadsPerCore;
  /// Internal identifier for this data source (hash of all values).
  final String? id;
  /// Total memory available on the host in kilobytes.
  final double? memoryTotalKb;
  /// Number of NUMA nodes on the host.
  final double? numaNodes;

  /// Creates a new [GetNodeInfoResult].
  /// [cpuCoresPerSocket] Number of CPU cores per socket.
  /// [cpuCoresTotal] Total number of logical CPU cores available on the host.
  /// [cpuModel] CPU model name (e.g., 'x86_64').
  /// [cpuSockets] Number of CPU sockets on the host.
  /// [cpuThreadsPerCore] Number of threads per CPU core (e.g., 2 for hyper-threading).
  /// [id] Internal identifier for this data source (hash of all values).
  /// [memoryTotalKb] Total memory available on the host in kilobytes.
  /// [numaNodes] Number of NUMA nodes on the host.
  const GetNodeInfoResult({
    this.cpuCoresPerSocket,
    this.cpuCoresTotal,
    this.cpuModel,
    this.cpuSockets,
    this.cpuThreadsPerCore,
    this.id,
    this.memoryTotalKb,
    this.numaNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCoresPerSocket': ?cpuCoresPerSocket,
      'cpuCoresTotal': ?cpuCoresTotal,
      'cpuModel': ?cpuModel,
      'cpuSockets': ?cpuSockets,
      'cpuThreadsPerCore': ?cpuThreadsPerCore,
      'id': ?id,
      'memoryTotalKb': ?memoryTotalKb,
      'numaNodes': ?numaNodes,
    };
  }

  factory GetNodeInfoResult.fromMap(Map<String, dynamic> map) {
    return GetNodeInfoResult(
      cpuCoresPerSocket: (() { final guardedValue = map['cpuCoresPerSocket']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuCoresTotal: (() { final guardedValue = map['cpuCoresTotal']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuModel: (() { final guardedValue = map['cpuModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuSockets: (() { final guardedValue = map['cpuSockets']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuThreadsPerCore: (() { final guardedValue = map['cpuThreadsPerCore']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memoryTotalKb: (() { final guardedValue = map['memoryTotalKb']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numaNodes: (() { final guardedValue = map['numaNodes']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
