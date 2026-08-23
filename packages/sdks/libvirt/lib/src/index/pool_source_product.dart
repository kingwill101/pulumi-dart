// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceProduct {
  /// Configures the name attribute of the product related to the storage source.
  final pulumi.Input<String> name;

  /// Creates a new [PoolSourceProduct].
  /// [name] Configures the name attribute of the product related to the storage source.
  const PoolSourceProduct({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PoolSourceProduct.fromMap(Map<String, dynamic> map) {
    return PoolSourceProduct(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
