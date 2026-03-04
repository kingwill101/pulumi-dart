// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityReservationSku {
  /// Specifies the number of instances to be reserved. It must be greater than or equal to `0` and not exceed the quota in the subscription.
  final pulumi.Input<int> capacity;

  /// Name of the sku, such as `Standard_F2`. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [CapacityReservationSku].
  /// [capacity] Specifies the number of instances to be reserved. It must be greater than or equal to `0` and not exceed the quota in the subscription.
  /// [name] Name of the sku, such as `Standard_F2`. Changing this forces a new resource to be created.
  CapacityReservationSku({required this.capacity, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'capacity': capacity, 'name': name};
  }

  factory CapacityReservationSku.fromMap(Map<String, dynamic> map) {
    return CapacityReservationSku(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
