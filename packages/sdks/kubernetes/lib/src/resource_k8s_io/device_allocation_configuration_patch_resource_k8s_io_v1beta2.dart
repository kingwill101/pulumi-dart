// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_patch_resource_k8s_io_v1beta2.dart';

/// DeviceAllocationConfiguration gets embedded in an AllocationResult.
class DeviceAllocationConfigurationPatchResourceK8sIoV1beta2 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2>? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format <main request>[/<subrequest>]. If just the main request is given, the configuration applies to all subrequests.
  final pulumi.Input<List<String>>? requests;
  /// Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  final pulumi.Input<String>? source;

  /// Creates a new [DeviceAllocationConfigurationPatchResourceK8sIoV1beta2].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  /// [source] Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  DeviceAllocationConfigurationPatchResourceK8sIoV1beta2({
    this.opaque,
    this.requests,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2, Map<String, dynamic>>(opaque, (value) => value.toMap()),
      'requests': ?requests,
      'source': ?source,
    };
  }

  factory DeviceAllocationConfigurationPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationConfigurationPatchResourceK8sIoV1beta2(
      opaque: map['opaque'] == null ? null : (OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2.fromMap((map['opaque'] as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : ((map['requests'] as List).cast<String>()).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

