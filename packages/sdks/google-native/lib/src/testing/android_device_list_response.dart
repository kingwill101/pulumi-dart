// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_device_response.dart';

/// A list of Android device configurations in which the test is to be executed.
class AndroidDeviceListResponse {
  /// A list of Android devices.
  final pulumi.Input<List<AndroidDeviceResponse>> androidDevices;

  /// Creates a new [AndroidDeviceListResponse].
  /// [androidDevices] A list of Android devices.
  AndroidDeviceListResponse({
    required this.androidDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidDevices': pulumi.Input.mapInputValue<List<AndroidDeviceResponse>, List<Map<String, dynamic>>>(androidDevices, (value) => pulumi.Input.encodeList<AndroidDeviceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AndroidDeviceListResponse.fromMap(Map<String, dynamic> map) {
    return AndroidDeviceListResponse(
      androidDevices: pulumi.Input.fromValue(pulumi.Input.decodeList<AndroidDeviceResponse>(map['androidDevices']!, (value) => AndroidDeviceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

