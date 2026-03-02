// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration.dart';

/// DeviceClaimConfiguration is used for configuration parameters in DeviceClaim.
class DeviceClaimConfiguration {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfiguration>? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format <main request>[/<subrequest>]. If just the main request is given, the configuration applies to all subrequests.
  final pulumi.Input<List<String>>? requests;

  /// Creates a new [DeviceClaimConfiguration].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, it applies to all requests.
  DeviceClaimConfiguration({
    this.opaque,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfiguration, Map<String, dynamic>>(opaque, (value) => value.toMap()),
      'requests': ?requests,
    };
  }

  factory DeviceClaimConfiguration.fromMap(Map<String, dynamic> map) {
    return DeviceClaimConfiguration(
      opaque: map['opaque'] == null ? null : (OpaqueDeviceConfiguration.fromMap((map['opaque']! as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : ((map['requests']! as List).cast<String>()).input(),
    );
  }
}

