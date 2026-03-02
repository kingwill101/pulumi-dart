// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_resource_k8s_io_v1beta1.dart';

/// DeviceClaimConfiguration is used for configuration parameters in DeviceClaim.
class DeviceClaimConfigurationResourceK8sIoV1beta1 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationResourceK8sIoV1beta1>? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format <main request>[/<subrequest>]. If just the main request is given, the configuration applies to all subrequests.
  final pulumi.Input<List<String>>? requests;

  /// Creates a new [DeviceClaimConfigurationResourceK8sIoV1beta1].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  DeviceClaimConfigurationResourceK8sIoV1beta1({
    this.opaque,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationResourceK8sIoV1beta1, Map<String, dynamic>>(opaque, (value) => value.toMap()),
      'requests': ?requests,
    };
  }

  factory DeviceClaimConfigurationResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceClaimConfigurationResourceK8sIoV1beta1(
      opaque: map['opaque'] == null ? null : (OpaqueDeviceConfigurationResourceK8sIoV1beta1.fromMap((map['opaque'] as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : ((map['requests'] as List).cast<String>()).input(),
    );
  }
}

