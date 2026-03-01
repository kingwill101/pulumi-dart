// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_allocation_configuration.dart';
import 'device_request_allocation_result.dart';

/// DeviceAllocationResult is the result of allocating devices.
class DeviceAllocationResult {
  /// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  ///
  /// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
  final List<DeviceAllocationConfiguration>? config;
  /// Results lists all allocated devices.
  final List<DeviceRequestAllocationResult>? results;

  /// Creates a new [DeviceAllocationResult].
  /// [config] This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  /// [results] Results lists all allocated devices.
  DeviceAllocationResult({
    this.config,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceAllocationConfiguration, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'results': ?results == null ? null : pulumi.Input.encodeList<DeviceRequestAllocationResult, Map<String, dynamic>>(results!, (value) => value.toMap()),
    };
  }

  factory DeviceAllocationResult.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationResult(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceAllocationConfiguration>(map['config'], (value) => DeviceAllocationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      results: map['results'] == null ? null : pulumi.Input.decodeList<DeviceRequestAllocationResult>(map['results'], (value) => DeviceRequestAllocationResult.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

