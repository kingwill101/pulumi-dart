// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
class Sku {
  /// The capacity of the sku. For Gen1 environments, this value can be changed to support scale out of environments after they have been created.
  final pulumi.Input<int> capacity;
  /// The name of this SKU.
  final pulumi.Input<dynamic> name;

  /// Creates a new [Sku].
  /// [capacity] The capacity of the sku. For Gen1 environments, this value can be changed to support scale out of environments after they have been created.
  /// [name] The name of this SKU.
  const Sku({
    required this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['capacity'])),
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
