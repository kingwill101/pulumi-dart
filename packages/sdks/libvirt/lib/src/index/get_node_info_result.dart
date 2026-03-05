// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNodeInfo.
class GetNodeInfoResult {
  /// Number of CPU cores per socket.
  final double cpuCoresPerSocket;

  /// Total number of logical CPU cores available on the host.
  final double cpuCoresTotal;

  /// CPU model name (e.g., 'x86_64').
  final String cpuModel;

  /// Number of CPU sockets on the host.
  final double cpuSockets;

  /// Number of threads per CPU core (e.g., 2 for hyper-threading).
  final double cpuThreadsPerCore;

  /// Internal identifier for this data source (hash of all values).
  final String id;

  /// Total memory available on the host in kilobytes.
  final double memoryTotalKb;

  /// Number of NUMA nodes on the host.
  final double numaNodes;

  /// Creates a new [GetNodeInfoResult].
  /// [cpuCoresPerSocket] Number of CPU cores per socket.
  /// [cpuCoresTotal] Total number of logical CPU cores available on the host.
  /// [cpuModel] CPU model name (e.g., 'x86_64').
  /// [cpuSockets] Number of CPU sockets on the host.
  /// [cpuThreadsPerCore] Number of threads per CPU core (e.g., 2 for hyper-threading).
  /// [id] Internal identifier for this data source (hash of all values).
  /// [memoryTotalKb] Total memory available on the host in kilobytes.
  /// [numaNodes] Number of NUMA nodes on the host.
  GetNodeInfoResult({
    required this.cpuCoresPerSocket,
    required this.cpuCoresTotal,
    required this.cpuModel,
    required this.cpuSockets,
    required this.cpuThreadsPerCore,
    required this.id,
    required this.memoryTotalKb,
    required this.numaNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCoresPerSocket': cpuCoresPerSocket,
      'cpuCoresTotal': cpuCoresTotal,
      'cpuModel': cpuModel,
      'cpuSockets': cpuSockets,
      'cpuThreadsPerCore': cpuThreadsPerCore,
      'id': id,
      'memoryTotalKb': memoryTotalKb,
      'numaNodes': numaNodes,
    };
  }

  factory GetNodeInfoResult.fromMap(Map<String, dynamic> map) {
    return GetNodeInfoResult(
      cpuCoresPerSocket: map['cpuCoresPerSocket'] as double,
      cpuCoresTotal: map['cpuCoresTotal'] as double,
      cpuModel: map['cpuModel'] as String,
      cpuSockets: map['cpuSockets'] as double,
      cpuThreadsPerCore: map['cpuThreadsPerCore'] as double,
      id: map['id'] as String,
      memoryTotalKb: map['memoryTotalKb'] as double,
      numaNodes: map['numaNodes'] as double,
    );
  }
}
