// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the Sku.
class AccountResponseSku {
  /// Gets or sets the sku capacity.
  final pulumi.Input<int>? capacity;
  /// Gets or sets the sku name.
  final pulumi.Input<String>? name;

  /// Creates a new [AccountResponseSku].
  /// [capacity] Gets or sets the sku capacity.
  /// [name] Gets or sets the sku name.
  const AccountResponseSku({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory AccountResponseSku.fromMap(Map<String, dynamic> map) {
    return AccountResponseSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

