// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The device state, as reported by the device.
class DeviceStateResponse {
  /// The device state data.
  final pulumi.Input<String> binaryData;
  /// [Output only] The time at which this state version was updated in Cloud IoT Core.
  final pulumi.Input<String> updateTime;

  /// Creates a new [DeviceStateResponse].
  /// [binaryData] The device state data.
  /// [updateTime] [Output only] The time at which this state version was updated in Cloud IoT Core.
  DeviceStateResponse({
    required this.binaryData,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryData': binaryData,
      'updateTime': updateTime,
    };
  }

  factory DeviceStateResponse.fromMap(Map<String, dynamic> map) {
    return DeviceStateResponse(
      binaryData: (map['binaryData'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

