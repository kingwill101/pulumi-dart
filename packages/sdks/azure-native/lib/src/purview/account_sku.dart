// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the Sku.
class AccountSku {
  /// Gets or sets the sku capacity.
  final pulumi.Input<int>? capacity;
  /// Gets or sets the sku name.
  final pulumi.Input<String>? name;

  /// Creates a new [AccountSku].
  /// [capacity] Gets or sets the sku capacity.
  /// [name] Gets or sets the sku name.
  AccountSku({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory AccountSku.fromMap(Map<String, dynamic> map) {
    return AccountSku(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

