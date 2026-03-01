// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_allocation_configuration_patch_resource_k8s_io_v1alpha3.dart';
import 'device_request_allocation_result_patch_resource_k8s_io_v1alpha3.dart';

/// DeviceAllocationResult is the result of allocating devices.
class DeviceAllocationResultPatchResourceK8sIoV1alpha3 {
  /// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  ///
  /// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
  final List<DeviceAllocationConfigurationPatchResourceK8sIoV1alpha3>? config;
  /// Results lists all allocated devices.
  final List<DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3>? results;

  /// Creates a new [DeviceAllocationResultPatchResourceK8sIoV1alpha3].
  /// [config] This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  /// [results] Results lists all allocated devices.
  DeviceAllocationResultPatchResourceK8sIoV1alpha3({
    this.config,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceAllocationConfigurationPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'results': ?results == null ? null : pulumi.Input.encodeList<DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(results!, (value) => value.toMap()),
    };
  }

  factory DeviceAllocationResultPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationResultPatchResourceK8sIoV1alpha3(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceAllocationConfigurationPatchResourceK8sIoV1alpha3>(map['config'], (value) => DeviceAllocationConfigurationPatchResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())),
      results: map['results'] == null ? null : pulumi.Input.decodeList<DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3>(map['results'], (value) => DeviceRequestAllocationResultPatchResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

