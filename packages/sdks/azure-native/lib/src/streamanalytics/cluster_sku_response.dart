// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests.
class ClusterSkuResponse {
  /// Denotes the number of streaming units the cluster can support. Valid values for this property are multiples of 36 with a minimum value of 36 and maximum value of 216. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<int>? capacity;
  /// Specifies the SKU name of the cluster. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<String>? name;

  /// Creates a new [ClusterSkuResponse].
  /// [capacity] Denotes the number of streaming units the cluster can support. Valid values for this property are multiples of 36 with a minimum value of 36 and maximum value of 216. Required on PUT (CreateOrUpdate) requests.
  /// [name] Specifies the SKU name of the cluster. Required on PUT (CreateOrUpdate) requests.
  ClusterSkuResponse({
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
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

