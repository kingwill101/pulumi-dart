// ignore_for_file: unused_element, unnecessary_cast


/// Read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes consistency to improve availability.
class MultiClusterRoutingUseAny {
  /// The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  final List<String>? clusterIds;

  /// Creates a new [MultiClusterRoutingUseAny].
  /// [clusterIds] The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  MultiClusterRoutingUseAny({
    this.clusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIds': ?clusterIds,
    };
  }

  factory MultiClusterRoutingUseAny.fromMap(Map<String, dynamic> map) {
    return MultiClusterRoutingUseAny(
      clusterIds: map['clusterIds'] == null ? null : (map['clusterIds'] as List).cast<String>(),
    );
  }
}

