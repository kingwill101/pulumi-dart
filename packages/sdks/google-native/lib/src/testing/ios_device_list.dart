// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ios_device.dart';

/// A list of iOS device configurations in which the test is to be executed.
class IosDeviceList {
  /// A list of iOS devices.
  final pulumi.Input<List<IosDevice>> iosDevices;

  /// Creates a new [IosDeviceList].
  /// [iosDevices] A list of iOS devices.
  const IosDeviceList({
    required this.iosDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosDevices': pulumi.Input.mapInputValue<List<IosDevice>, List<Map<String, dynamic>>>(iosDevices, (value) => pulumi.Input.encodeList<IosDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IosDeviceList.fromMap(Map<String, dynamic> map) {
    return IosDeviceList(
      iosDevices: pulumi.Input.fromValue(pulumi.Input.decodeList<IosDevice>(map['iosDevices']!, (value) => IosDevice.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
