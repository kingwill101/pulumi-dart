// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IotHubDpsSku {
  /// The number of provisioned IoT Device Provisioning Service units.
  final pulumi.Input<int> capacity;
  /// The name of the sku. Currently can only be set to `S1`.
  final pulumi.Input<String> name;

  /// Creates a new [IotHubDpsSku].
  /// [capacity] The number of provisioned IoT Device Provisioning Service units.
  /// [name] The name of the sku. Currently can only be set to `S1`.
  IotHubDpsSku({
    required this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
    };
  }

  factory IotHubDpsSku.fromMap(Map<String, dynamic> map) {
    return IotHubDpsSku(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

