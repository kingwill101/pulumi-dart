// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ios_device_response.dart';

/// A list of iOS device configurations in which the test is to be executed.
class IosDeviceListResponse {
  /// A list of iOS devices.
  final pulumi.Input<List<IosDeviceResponse>> iosDevices;

  /// Creates a new [IosDeviceListResponse].
  /// [iosDevices] A list of iOS devices.
  const IosDeviceListResponse({
    required this.iosDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosDevices': pulumi.Input.mapInputValue<List<IosDeviceResponse>, List<Map<String, dynamic>>>(iosDevices, (value) => pulumi.Input.encodeList<IosDeviceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IosDeviceListResponse.fromMap(Map<String, dynamic> map) {
    return IosDeviceListResponse(
      iosDevices: pulumi.Input.fromValue(pulumi.Input.decodeList<IosDeviceResponse>(map['iosDevices']!, (value) => IosDeviceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

