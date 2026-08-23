// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_patch_resource_k8s_io_v1beta1.dart';

/// DeviceClaimConfiguration is used for configuration parameters in DeviceClaim.
class DeviceClaimConfigurationPatchResourceK8sIoV1beta1 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta1>? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format &lt;main request&gt;[/&lt;subrequest&gt;]. If just the main request is given, the configuration applies to all subrequests.
  final pulumi.Input<List<String>>? requests;

  /// Creates a new [DeviceClaimConfigurationPatchResourceK8sIoV1beta1].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  const DeviceClaimConfigurationPatchResourceK8sIoV1beta1({
    this.opaque,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta1, Map<String, dynamic>>(opaque, (value) => value.toMap()),
      'requests': ?requests,
    };
  }

  factory DeviceClaimConfigurationPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceClaimConfigurationPatchResourceK8sIoV1beta1(
      opaque: (() { final guardedValue = map['opaque']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpaqueDeviceConfigurationPatchResourceK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
