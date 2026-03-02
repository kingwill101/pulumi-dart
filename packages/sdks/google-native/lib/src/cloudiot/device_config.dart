// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The device configuration. Eventually delivered to devices.
class DeviceConfig {
  /// The device configuration data.
  final pulumi.Input<String>? binaryData;

  /// Creates a new [DeviceConfig].
  /// [binaryData] The device configuration data.
  DeviceConfig({
    this.binaryData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryData': ?binaryData,
    };
  }

  factory DeviceConfig.fromMap(Map<String, dynamic> map) {
    return DeviceConfig(
      binaryData: map['binaryData'] == null ? null : (map['binaryData'] as String).input(),
    );
  }
}

