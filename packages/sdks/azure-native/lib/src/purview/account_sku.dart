// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Sku
class AccountSku {
  /// Gets or sets the sku capacity.
  final pulumi.Input<int?>? capacity;
  /// Gets or sets the sku name.
  final pulumi.Input<dynamic>? name;

  /// Creates a new [AccountSku].
  /// [capacity] Gets or sets the sku capacity.
  /// [name] Gets or sets the sku name.
  const AccountSku({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
