// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationSubBlockPhysicalTopology {
  /// The hash of the capacity block within the cluster.
  final pulumi.Input<String> block;
  /// The cluster name of the reservation sub-block.
  final pulumi.Input<String> cluster;
  /// The hash of the capacity sub-block within the capacity block.
  final pulumi.Input<String> subBlock;

  /// Creates a new [GetReservationSubBlockPhysicalTopology].
  /// [block] The hash of the capacity block within the cluster.
  /// [cluster] The cluster name of the reservation sub-block.
  /// [subBlock] The hash of the capacity sub-block within the capacity block.
  GetReservationSubBlockPhysicalTopology({
    required this.block,
    required this.cluster,
    required this.subBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'block': block,
      'cluster': cluster,
      'subBlock': subBlock,
    };
  }

  factory GetReservationSubBlockPhysicalTopology.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockPhysicalTopology(
      block: (map['block'] as String).input(),
      cluster: (map['cluster'] as String).input(),
      subBlock: (map['subBlock'] as String).input(),
    );
  }
}

