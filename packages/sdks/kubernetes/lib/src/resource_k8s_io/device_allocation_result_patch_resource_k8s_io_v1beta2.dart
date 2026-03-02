// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_allocation_configuration_patch_resource_k8s_io_v1beta2.dart';
import 'device_request_allocation_result_patch_resource_k8s_io_v1beta2.dart';

/// DeviceAllocationResult is the result of allocating devices.
class DeviceAllocationResultPatchResourceK8sIoV1beta2 {
  /// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  ///
  /// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
  final pulumi.Input<List<DeviceAllocationConfigurationPatchResourceK8sIoV1beta2>>? config;
  /// Results lists all allocated devices.
  final pulumi.Input<List<DeviceRequestAllocationResultPatchResourceK8sIoV1beta2>>? results;

  /// Creates a new [DeviceAllocationResultPatchResourceK8sIoV1beta2].
  /// [config] This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  /// [results] Results lists all allocated devices.
  DeviceAllocationResultPatchResourceK8sIoV1beta2({
    this.config,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceAllocationConfigurationPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceAllocationConfigurationPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'results': ?pulumi.Input.mapOptionalInputValue<List<DeviceRequestAllocationResultPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<DeviceRequestAllocationResultPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceAllocationResultPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationResultPatchResourceK8sIoV1beta2(
      config: map['config'] == null ? null : (pulumi.Input.decodeList<DeviceAllocationConfigurationPatchResourceK8sIoV1beta2>(map['config'], (value) => DeviceAllocationConfigurationPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      results: map['results'] == null ? null : (pulumi.Input.decodeList<DeviceRequestAllocationResultPatchResourceK8sIoV1beta2>(map['results'], (value) => DeviceRequestAllocationResultPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

