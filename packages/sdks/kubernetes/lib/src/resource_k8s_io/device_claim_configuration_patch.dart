// ignore_for_file: unused_element, unnecessary_cast

import 'opaque_device_configuration_patch.dart';

/// DeviceClaimConfiguration is used for configuration parameters in DeviceClaim.
class DeviceClaimConfigurationPatch {
  /// Opaque provides driver-specific configuration parameters.
  final OpaqueDeviceConfigurationPatch? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format <main request>[/<subrequest>]. If just the main request is given, the configuration applies to all subrequests.
  final List<String>? requests;

  /// Creates a new [DeviceClaimConfigurationPatch].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  DeviceClaimConfigurationPatch({
    this.opaque,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?opaque == null ? null : opaque!.toMap(),
      'requests': ?requests,
    };
  }

  factory DeviceClaimConfigurationPatch.fromMap(Map<String, dynamic> map) {
    return DeviceClaimConfigurationPatch(
      opaque: map['opaque'] == null ? null : OpaqueDeviceConfigurationPatch.fromMap((map['opaque'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : (map['requests'] as List).cast<String>(),
    );
  }
}

