// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_allocation_configuration_resource_k8s_io_v1beta2.dart';
import 'device_request_allocation_result_resource_k8s_io_v1beta2.dart';

/// DeviceAllocationResult is the result of allocating devices.
class DeviceAllocationResultResourceK8sIoV1beta2 {
  /// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  ///
  /// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
  final pulumi.Input<List<DeviceAllocationConfigurationResourceK8sIoV1beta2>>? config;
  /// Results lists all allocated devices.
  final pulumi.Input<List<DeviceRequestAllocationResultResourceK8sIoV1beta2>>? results;

  /// Creates a new [DeviceAllocationResultResourceK8sIoV1beta2].
  /// [config] This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  /// [results] Results lists all allocated devices.
  DeviceAllocationResultResourceK8sIoV1beta2({
    this.config,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceAllocationConfigurationResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceAllocationConfigurationResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'results': ?pulumi.Input.mapOptionalInputValue<List<DeviceRequestAllocationResultResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<DeviceRequestAllocationResultResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceAllocationResultResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationResultResourceK8sIoV1beta2(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceAllocationConfigurationResourceK8sIoV1beta2>(guardedValue, (value) => DeviceAllocationConfigurationResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceRequestAllocationResultResourceK8sIoV1beta2>(guardedValue, (value) => DeviceRequestAllocationResultResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

