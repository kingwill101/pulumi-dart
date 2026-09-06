// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cluster sku definition.
class ClusterSkuResponse {
  /// The capacity reservation level in Gigabytes for this cluster.
  final pulumi.Input<double?>? capacity;
  /// The SKU (tier) of a cluster.
  final pulumi.Input<String?>? name;

  /// Creates a new [ClusterSkuResponse].
  /// [capacity] The capacity reservation level in Gigabytes for this cluster.
  /// [name] The SKU (tier) of a cluster.
  const ClusterSkuResponse({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory ClusterSkuResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
