// ignore_for_file: unused_element, unnecessary_cast

import 'opaque_device_configuration.dart';

/// DeviceAllocationConfiguration gets embedded in an AllocationResult.
class DeviceAllocationConfiguration {
  /// Opaque provides driver-specific configuration parameters.
  final OpaqueDeviceConfiguration? opaque;
  /// Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  ///
  /// References to subrequests must include the name of the main request and may include the subrequest using the format <main request>[/<subrequest>]. If just the main request is given, the configuration applies to all subrequests.
  final List<String>? requests;
  /// Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  final String source;

  /// Creates a new [DeviceAllocationConfiguration].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  /// [requests] Requests lists the names of requests where the configuration applies. If empty, its applies to all requests.
  /// [source] Source records whether the configuration comes from a class and thus is not something that a normal user would have been able to set or from a claim.
  DeviceAllocationConfiguration({
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

  factory DeviceAllocationConfiguration.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationConfiguration(
      opaque: map['opaque'] == null ? null : OpaqueDeviceConfiguration.fromMap((map['opaque'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : (map['requests'] as List).cast<String>(),
      source: map['source'] as String,
    );
  }
}

