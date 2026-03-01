// ignore_for_file: unused_element, unnecessary_cast

import 'opaque_device_configuration_resource_k8s_io_v1alpha3.dart';

/// DeviceAllocationConfiguration gets embedded in an AllocationResult.
class DeviceAllocationConfigurationResourceK8sIoV1alpha3 {
  /// Opaque provides driver-specific configuration parameters.
  final OpaqueDeviceConfigurationResourceK8sIoV1alpha3? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  final List<String>? requests;
  /// Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  final String source;

  /// Creates a new [DeviceAllocationConfigurationResourceK8sIoV1alpha3].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  /// [source] Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  DeviceAllocationConfigurationResourceK8sIoV1alpha3({
    this.opaque,
    this.requests,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?opaque == null ? null : opaque!.toMap(),
      'requests': ?requests,
      'source': source,
    };
  }

  factory DeviceAllocationConfigurationResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationConfigurationResourceK8sIoV1alpha3(
      opaque: map['opaque'] == null ? null : OpaqueDeviceConfigurationResourceK8sIoV1alpha3.fromMap((map['opaque'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : (map['requests'] as List).cast<String>(),
      source: map['source'] as String,
    );
  }
}

