// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitConnectorsResultDevice {
  final pulumi.Input<String> id;
  final pulumi.Input<String> serialNumber;
  /// Available values: "MANAGED", "LICENSED".
  final pulumi.Input<String> type;

  /// Creates a new [GetMagicTransitConnectorsResultDevice].
  /// [id] Required.
  /// [serialNumber] Required.
  /// [type] Available values: "MANAGED", "LICENSED".
  const GetMagicTransitConnectorsResultDevice({
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

  factory GetMagicTransitConnectorsResultDevice.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorsResultDevice(
      id: pulumi.Input.fromValue(map['id'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
