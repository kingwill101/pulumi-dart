// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_device.dart';

/// A list of Android device configurations in which the test is to be executed.
class AndroidDeviceList {
  /// A list of Android devices.
  final pulumi.Input<List<AndroidDevice>> androidDevices;

  /// Creates a new [AndroidDeviceList].
  /// [androidDevices] A list of Android devices.
  AndroidDeviceList({
    required this.androidDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidDevices': pulumi.Input.mapInputValue<List<AndroidDevice>, List<Map<String, dynamic>>>(androidDevices, (value) => pulumi.Input.encodeList<AndroidDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AndroidDeviceList.fromMap(Map<String, dynamic> map) {
    return AndroidDeviceList(
      androidDevices: pulumi.Input.fromValue(pulumi.Input.decodeList<AndroidDevice>(map['androidDevices']!, (value) => AndroidDevice.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

