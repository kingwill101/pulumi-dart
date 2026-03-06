// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IoTHubSku {
  /// The number of provisioned IoT Hub units.
  ///
  /// &gt; **Note:** Only one IotHub can be on the `Free` tier per subscription.
  final pulumi.Input<int> capacity;
  /// The name of the sku. Possible values are `B1`, `B2`, `B3`, `F1`, `S1`, `S2`, and `S3`.
  ///
  /// &gt; **Note:** The `F1` sku is on `Free` tier.
  final pulumi.Input<String> name;

  /// Creates a new [IoTHubSku].
  /// [capacity] The number of provisioned IoT Hub units.
  /// [name] The name of the sku. Possible values are `B1`, `B2`, `B3`, `F1`, `S1`, `S2`, and `S3`.
  const IoTHubSku({
    required this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
    };
  }

  factory IoTHubSku.fromMap(Map<String, dynamic> map) {
    return IoTHubSku(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

