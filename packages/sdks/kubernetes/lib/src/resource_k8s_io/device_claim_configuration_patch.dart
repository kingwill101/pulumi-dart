// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_patch.dart';

/// DeviceClaimConfiguration is used for configuration parameters in DeviceClaim.
class DeviceClaimConfigurationPatch {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationPatch>? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format &lt;main request&gt;[/&lt;subrequest&gt;]. If just the main request is given, the configuration applies to all subrequests.
  final pulumi.Input<List<String>>? requests;

  /// Creates a new [DeviceClaimConfigurationPatch].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  const DeviceClaimConfigurationPatch({
    this.opaque,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationPatch, Map<String, dynamic>>(opaque, (value) => value.toMap()),
      'requests': ?requests,
    };
  }

  factory DeviceClaimConfigurationPatch.fromMap(Map<String, dynamic> map) {
    return DeviceClaimConfigurationPatch(
      opaque: (() { final guardedValue = map['opaque']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpaqueDeviceConfigurationPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
