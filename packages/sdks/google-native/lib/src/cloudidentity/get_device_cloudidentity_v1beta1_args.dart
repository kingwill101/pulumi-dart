// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1beta1_get_device_cloudidentity_v1beta1_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_get_device_cloudidentity_v1beta1_args_doc}
class GetDeviceCloudidentityV1beta1Args {
  final pulumi.Input<String>? customer;
  final pulumi.Input<String> deviceId;

  /// Creates a new [GetDeviceCloudidentityV1beta1Args].
  /// [customer] Optional.
  /// [deviceId] Required.
  const GetDeviceCloudidentityV1beta1Args({
    this.customer,
    required this.deviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'deviceId': deviceId,
    };
  }

  factory GetDeviceCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDeviceCloudidentityV1beta1Args(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceId: pulumi.Input.fromValue(map['deviceId'] as String),
    );
  }
}
