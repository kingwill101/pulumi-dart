// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_driver_statistics_latency_histogram_bin.dart';

class DomainDevicesDiskDriverStatisticsLatencyHistogram {
  final pulumi.Input<List<DomainDevicesDiskDriverStatisticsLatencyHistogramBin>?>? bins;
  /// Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  final pulumi.Input<String?>? type;

  /// Creates a new [DomainDevicesDiskDriverStatisticsLatencyHistogram].
  /// [bins] Optional.
  /// [type] Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  const DomainDevicesDiskDriverStatisticsLatencyHistogram({
    this.bins,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bins': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskDriverStatisticsLatencyHistogramBin>, List<Map<String, dynamic>>>(bins, (value) => pulumi.Input.encodeList<DomainDevicesDiskDriverStatisticsLatencyHistogramBin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory DomainDevicesDiskDriverStatisticsLatencyHistogram.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverStatisticsLatencyHistogram(
      bins: (() { final guardedValue = map['bins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskDriverStatisticsLatencyHistogramBin>(guardedValue, (value) => DomainDevicesDiskDriverStatisticsLatencyHistogramBin.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
