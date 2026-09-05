// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_throttle_filters_throttle_filter.dart';

class DomainDevicesDiskThrottleFilters {
  /// Specifies individual throttle filter settings for the disk device.
  final pulumi.Input<List<DomainDevicesDiskThrottleFiltersThrottleFilter>?>? throttleFilters;

  /// Creates a new [DomainDevicesDiskThrottleFilters].
  /// [throttleFilters] Specifies individual throttle filter settings for the disk device.
  const DomainDevicesDiskThrottleFilters({
    this.throttleFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'throttleFilters': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskThrottleFiltersThrottleFilter>, List<Map<String, dynamic>>>(throttleFilters, (value) => pulumi.Input.encodeList<DomainDevicesDiskThrottleFiltersThrottleFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskThrottleFilters.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskThrottleFilters(
      throttleFilters: (() { final guardedValue = map['throttleFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskThrottleFiltersThrottleFilter>(guardedValue, (value) => DomainDevicesDiskThrottleFiltersThrottleFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
