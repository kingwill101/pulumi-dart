// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationBlockPhysicalTopology {
  /// The hash of the capacity block within the cluster.
  final pulumi.Input<String> block;
  /// The cluster name of the reservation block.
  final pulumi.Input<String> cluster;

  /// Creates a new [GetReservationBlockPhysicalTopology].
  /// [block] The hash of the capacity block within the cluster.
  /// [cluster] The cluster name of the reservation block.
  const GetReservationBlockPhysicalTopology({
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
      block: pulumi.Input.fromValue(map['block'] as String),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
    );
  }
}

