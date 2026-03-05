// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_allocation_configuration_patch.dart';
import 'device_request_allocation_result_patch.dart';

/// DeviceAllocationResult is the result of allocating devices.
class DeviceAllocationResultPatch {
  /// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  ///
  /// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
  final pulumi.Input<List<DeviceAllocationConfigurationPatch>>? config;
  /// Results lists all allocated devices.
  final pulumi.Input<List<DeviceRequestAllocationResultPatch>>? results;

  /// Creates a new [DeviceAllocationResultPatch].
  /// [config] This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  /// [results] Results lists all allocated devices.
  DeviceAllocationResultPatch({
    this.config,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceAllocationConfigurationPatch>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceAllocationConfigurationPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'results': ?pulumi.Input.mapOptionalInputValue<List<DeviceRequestAllocationResultPatch>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<DeviceRequestAllocationResultPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceAllocationResultPatch.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationResultPatch(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceAllocationConfigurationPatch>(guardedValue, (value) => DeviceAllocationConfigurationPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceRequestAllocationResultPatch>(guardedValue, (value) => DeviceRequestAllocationResultPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

