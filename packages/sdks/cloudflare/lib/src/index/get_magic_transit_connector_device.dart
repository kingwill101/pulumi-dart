// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitConnectorDevice {
  final pulumi.Input<String> id;
  final pulumi.Input<String> serialNumber;
  /// Available values: "MANAGED", "LICENSED".
  final pulumi.Input<String> type;

  /// Creates a new [GetMagicTransitConnectorDevice].
  /// [id] Required.
  /// [serialNumber] Required.
  /// [type] Available values: "MANAGED", "LICENSED".
  const GetMagicTransitConnectorDevice({
    required this.id,
    required this.serialNumber,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'serialNumber': serialNumber,
      'type': type,
    };
  }

  factory GetMagicTransitConnectorDevice.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorDevice(
      id: pulumi.Input.fromValue(map['id'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
