// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Sku
class AccountSkuResponse {
  /// Gets or sets the sku capacity.
  final pulumi.Input<int?>? capacity;
  /// Gets or sets the sku name.
  final pulumi.Input<String?>? name;

  /// Creates a new [AccountSkuResponse].
  /// [capacity] Gets or sets the sku capacity.
  /// [name] Gets or sets the sku name.
  const AccountSkuResponse({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory AccountSkuResponse.fromMap(Map<String, dynamic> map) {
    return AccountSkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
