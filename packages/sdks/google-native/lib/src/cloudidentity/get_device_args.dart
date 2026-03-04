// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_get_device_args_doc}
class GetDeviceArgs {
  final pulumi.Input<String>? customer;
  final pulumi.Input<String> deviceId;

  /// Creates a new [GetDeviceArgs].
  /// [customer] Optional.
  /// [deviceId] Required.
  GetDeviceArgs({this.customer, required this.deviceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customer': ?customer, 'deviceId': deviceId};
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      customer: (() {
        final guardedValue = map['customer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceId: pulumi.Input.fromValue(map['deviceId'] as String),
    );
  }
}
