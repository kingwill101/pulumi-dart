// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes consistency to improve availability.
class MultiClusterRoutingUseAnyResponse {
  /// The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  final pulumi.Input<List<String>> clusterIds;

  /// Creates a new [MultiClusterRoutingUseAnyResponse].
  /// [clusterIds] The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  const MultiClusterRoutingUseAnyResponse({
    required this.clusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIds': clusterIds,
    };
  }

  factory MultiClusterRoutingUseAnyResponse.fromMap(Map<String, dynamic> map) {
    return MultiClusterRoutingUseAnyResponse(
      clusterIds: pulumi.Input.fromValue((map['clusterIds'] as List).cast<String>()),
    );
  }
}
