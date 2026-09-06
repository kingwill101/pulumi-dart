// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests.
class ClusterSku {
  /// Denotes the number of streaming units the cluster can support. Valid values for this property are multiples of 36 with a minimum value of 36 and maximum value of 216. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<int?>? capacity;
  /// Specifies the SKU name of the cluster. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<dynamic>? name;

  /// Creates a new [ClusterSku].
  /// [capacity] Denotes the number of streaming units the cluster can support. Valid values for this property are multiples of 36 with a minimum value of 36 and maximum value of 216. Required on PUT (CreateOrUpdate) requests.
  /// [name] Specifies the SKU name of the cluster. Required on PUT (CreateOrUpdate) requests.
  const ClusterSku({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
