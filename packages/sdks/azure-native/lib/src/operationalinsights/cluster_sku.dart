// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cluster sku definition.
class ClusterSku {
  /// The capacity reservation level in Gigabytes for this cluster.
  final pulumi.Input<double>? capacity;
  /// The SKU (tier) of a cluster.
  final pulumi.Input<String>? name;

  /// Creates a new [ClusterSku].
  /// [capacity] The capacity reservation level in Gigabytes for this cluster.
  /// [name] The SKU (tier) of a cluster.
  ClusterSku({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory ClusterSku.fromMap(Map<String, dynamic> map) {
    return ClusterSku(
      capacity: map['capacity'] == null ? null : (map['capacity']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

