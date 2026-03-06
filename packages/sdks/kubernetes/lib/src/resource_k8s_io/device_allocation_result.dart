// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_allocation_configuration.dart';
import 'device_request_allocation_result.dart';

/// DeviceAllocationResult is the result of allocating devices.
class DeviceAllocationResult {
  /// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  ///
  /// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
  final pulumi.Input<List<DeviceAllocationConfiguration>>? config;
  /// Results lists all allocated devices.
  final pulumi.Input<List<DeviceRequestAllocationResult>>? results;

  /// Creates a new [DeviceAllocationResult].
  /// [config] This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  /// [results] Results lists all allocated devices.
  const DeviceAllocationResult({
    this.config,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceAllocationConfiguration>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceAllocationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'results': ?pulumi.Input.mapOptionalInputValue<List<DeviceRequestAllocationResult>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<DeviceRequestAllocationResult, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceAllocationResult.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationResult(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceAllocationConfiguration>(guardedValue, (value) => DeviceAllocationConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceRequestAllocationResult>(guardedValue, (value) => DeviceRequestAllocationResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

