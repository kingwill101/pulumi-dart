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
  GetDeviceCloudidentityV1beta1Args({
    pulumi.Output<String>? customer,
    required pulumi.Output<String> deviceId,
  }) :
      customer = pulumi.Input.asOptionalInput<String>(customer),
      deviceId = pulumi.Input.asInput<String>(deviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'deviceId': deviceId,
    };
  }

  factory GetDeviceCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDeviceCloudidentityV1beta1Args(
      customer: map['customer'] == null ? null : pulumi.Output.create<String>(map['customer'] as String),
      deviceId: pulumi.Output.create<String>(map['deviceId'] as String),
    );
  }
}

