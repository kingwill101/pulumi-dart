// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ios_device_response.dart';

/// A list of iOS device configurations in which the test is to be executed.
class IosDeviceListResponse {
  /// A list of iOS devices.
  final List<IosDeviceResponse> iosDevices;

  /// Creates a new [IosDeviceListResponse].
  /// [iosDevices] A list of iOS devices.
  IosDeviceListResponse({
    required this.iosDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosDevices': pulumi.Input.encodeList<IosDeviceResponse, Map<String, dynamic>>(iosDevices, (value) => value.toMap()),
    };
  }

  factory IosDeviceListResponse.fromMap(Map<String, dynamic> map) {
    return IosDeviceListResponse(
      iosDevices: pulumi.Input.decodeList<IosDeviceResponse>(map['iosDevices'], (value) => IosDeviceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

