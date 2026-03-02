// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_resource_k8s_io_v1beta1.dart';

/// DeviceAllocationConfiguration gets embedded in an AllocationResult.
class DeviceAllocationConfigurationResourceK8sIoV1beta1 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationResourceK8sIoV1beta1>? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format <main request>[/<subrequest>]. If just the main request is given, the configuration applies to all subrequests.
  final pulumi.Input<List<String>>? requests;
  /// Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  final pulumi.Input<String> source;

  /// Creates a new [DeviceAllocationConfigurationResourceK8sIoV1beta1].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  /// [source] Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  DeviceAllocationConfigurationResourceK8sIoV1beta1({
    this.opaque,
    this.requests,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationResourceK8sIoV1beta1, Map<String, dynamic>>(opaque, (value) => value.toMap()),
      'requests': ?requests,
      'source': source,
    };
  }

  factory DeviceAllocationConfigurationResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationConfigurationResourceK8sIoV1beta1(
      opaque: map['opaque'] == null ? null : (OpaqueDeviceConfigurationResourceK8sIoV1beta1.fromMap((map['opaque']! as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : ((map['requests']! as List).cast<String>()).input(),
      source: (map['source'] as String).input(),
    );
  }
}

