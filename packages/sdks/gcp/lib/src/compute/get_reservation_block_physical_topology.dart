// ignore_for_file: unused_element, unnecessary_cast


class GetReservationBlockPhysicalTopology {
  /// The hash of the capacity block within the cluster.
  final String block;
  /// The cluster name of the reservation block.
  final String cluster;

  /// Creates a new [GetReservationBlockPhysicalTopology].
  /// [block] The hash of the capacity block within the cluster.
  /// [cluster] The cluster name of the reservation block.
  GetReservationBlockPhysicalTopology({
    required this.block,
    required this.cluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'block': block,
      'cluster': cluster,
    };
  }

  factory GetReservationBlockPhysicalTopology.fromMap(Map<String, dynamic> map) {
    return GetReservationBlockPhysicalTopology(
      block: map['block'] as String,
      cluster: map['cluster'] as String,
    );
  }
}

