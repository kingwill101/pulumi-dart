// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure SKU definition.
class AzureSkuResponse {
  /// The number of instances of the cluster.
  final pulumi.Input<int>? capacity;
  /// SKU name.
  final pulumi.Input<String> name;
  /// SKU size.
  final pulumi.Input<String> size;

  /// Creates a new [AzureSkuResponse].
  /// [capacity] The number of instances of the cluster.
  /// [name] SKU name.
  /// [size] SKU size.
  AzureSkuResponse({
    this.capacity,
    required this.name,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'size': size,
    };
  }

  factory AzureSkuResponse.fromMap(Map<String, dynamic> map) {
    return AzureSkuResponse(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      name: (map['name'] as String).input(),
      size: (map['size'] as String).input(),
    );
  }
}

