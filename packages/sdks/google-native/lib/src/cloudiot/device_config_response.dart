// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The device configuration. Eventually delivered to devices.
class DeviceConfigResponse {
  /// The device configuration data.
  final pulumi.Input<String> binaryData;
  /// [Output only] The time at which this configuration version was updated in Cloud IoT Core. This timestamp is set by the server.
  final pulumi.Input<String> cloudUpdateTime;
  /// [Output only] The time at which Cloud IoT Core received the acknowledgment from the device, indicating that the device has received this configuration version. If this field is not present, the device has not yet acknowledged that it received this version. Note that when the config was sent to the device, many config versions may have been available in Cloud IoT Core while the device was disconnected, and on connection, only the latest version is sent to the device. Some versions may never be sent to the device, and therefore are never acknowledged. This timestamp is set by Cloud IoT Core.
  final pulumi.Input<String> deviceAckTime;
  /// [Output only] The version of this update. The version number is assigned by the server, and is always greater than 0 after device creation. The version must be 0 on the `CreateDevice` request if a `config` is specified; the response of `CreateDevice` will always have a value of 1.
  final pulumi.Input<String> version;

  /// Creates a new [DeviceConfigResponse].
  /// [binaryData] The device configuration data.
  /// [cloudUpdateTime] [Output only] The time at which this configuration version was updated in Cloud IoT Core. This timestamp is set by the server.
  /// [deviceAckTime] [Output only] The time at which Cloud IoT Core received the acknowledgment from the device, indicating that the device has received this configuration version. If this field is not present, the device has not yet acknowledged that it received this version. Note that when the config was sent to the device, many config versions may have been available in Cloud IoT Core while the device was disconnected, and on connection, only the latest version is sent to the device. Some versions may never be sent to the device, and therefore are never acknowledged. This timestamp is set by Cloud IoT Core.
  /// [version] [Output only] The version of this update. The version number is assigned by the server, and is always greater than 0 after device creation. The version must be 0 on the `CreateDevice` request if a `config` is specified; the response of `CreateDevice` will always have a value of 1.
  const DeviceConfigResponse({
    required this.binaryData,
    required this.cloudUpdateTime,
    required this.deviceAckTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryData': binaryData,
      'cloudUpdateTime': cloudUpdateTime,
      'deviceAckTime': deviceAckTime,
      'version': version,
    };
  }

  factory DeviceConfigResponse.fromMap(Map<String, dynamic> map) {
    return DeviceConfigResponse(
      binaryData: pulumi.Input.fromValue(map['binaryData'] as String),
      cloudUpdateTime: pulumi.Input.fromValue(map['cloudUpdateTime'] as String),
      deviceAckTime: pulumi.Input.fromValue(map['deviceAckTime'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

