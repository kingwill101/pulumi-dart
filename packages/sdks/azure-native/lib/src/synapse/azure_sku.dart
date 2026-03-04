// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure SKU definition.
class AzureSku {
  /// The number of instances of the cluster.
  final pulumi.Input<int>? capacity;

  /// SKU name.
  final pulumi.Input<String> name;

  /// SKU size.
  final pulumi.Input<String> size;

  /// Creates a new [AzureSku].
  /// [capacity] The number of instances of the cluster.
  /// [name] SKU name.
  /// [size] SKU size.
  AzureSku({this.capacity, required this.name, required this.size});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'capacity': ?capacity, 'name': name, 'size': size};
  }

  factory AzureSku.fromMap(Map<String, dynamic> map) {
    return AzureSku(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      size: pulumi.Input.fromValue(map['size'] as String),
    );
  }
}
