// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_resource_k8s_io_v1alpha3.dart';

/// DeviceAllocationConfiguration gets embedded in an AllocationResult.
class DeviceAllocationConfigurationResourceK8sIoV1alpha3 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationResourceK8sIoV1alpha3>? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  final pulumi.Input<List<String>>? requests;
  /// Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  final pulumi.Input<String> source;

  /// Creates a new [DeviceAllocationConfigurationResourceK8sIoV1alpha3].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  /// [source] Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  const DeviceAllocationConfigurationResourceK8sIoV1alpha3({
    this.opaque,
    this.requests,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationResourceK8sIoV1alpha3, Map<String, dynamic>>(opaque, (value) => value.toMap()),
      'requests': ?requests,
      'source': source,
    };
  }

  factory DeviceAllocationConfigurationResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationConfigurationResourceK8sIoV1alpha3(
      opaque: (() { final guardedValue = map['opaque']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpaqueDeviceConfigurationResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
