// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_device_response.dart';
import 'ios_device_response.dart';

/// The environment in which the test is run.
class EnvironmentResponse {
  /// An Android device which must be used with an Android test.
  final pulumi.Input<AndroidDeviceResponse> androidDevice;
  /// An iOS device which must be used with an iOS test.
  final pulumi.Input<IosDeviceResponse> iosDevice;

  /// Creates a new [EnvironmentResponse].
  /// [androidDevice] An Android device which must be used with an Android test.
  /// [iosDevice] An iOS device which must be used with an iOS test.
  EnvironmentResponse({
    required this.androidDevice,
    required this.iosDevice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidDevice': pulumi.Input.mapInputValue<AndroidDeviceResponse, Map<String, dynamic>>(androidDevice, (value) => value.toMap()),
      'iosDevice': pulumi.Input.mapInputValue<IosDeviceResponse, Map<String, dynamic>>(iosDevice, (value) => value.toMap()),
    };
  }

  factory EnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse(
      androidDevice: pulumi.Input.fromValue(AndroidDeviceResponse.fromMap((map['androidDevice']! as Map).cast<String, dynamic>())),
      iosDevice: pulumi.Input.fromValue(IosDeviceResponse.fromMap((map['iosDevice']! as Map).cast<String, dynamic>())),
    );
  }
}

