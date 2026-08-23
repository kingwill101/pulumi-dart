// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_asset_aggregate_stat_core_count_histogram.dart';
import 'report_summary_group_finding_asset_aggregate_stat_memory_bytes_histogram.dart';
import 'report_summary_group_finding_asset_aggregate_stat_memory_utilization_chart.dart';
import 'report_summary_group_finding_asset_aggregate_stat_operating_system.dart';
import 'report_summary_group_finding_asset_aggregate_stat_software_instance.dart';
import 'report_summary_group_finding_asset_aggregate_stat_storage_bytes_histogram.dart';
import 'report_summary_group_finding_asset_aggregate_stat_storage_utilization_chart.dart';

class ReportSummaryGroupFindingAssetAggregateStat {
  /// (Output)
  /// A Histogram Chart shows a distribution of values into buckets, showing
  /// a count of values which fall into a bucket.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram>>? coreCountHistograms;
  /// (Output)
  /// A Histogram Chart shows a distribution of values into buckets, showing
  /// a count of values which fall into a bucket.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatMemoryBytesHistogram>>? memoryBytesHistograms;
  /// (Output)
  /// Utilization Chart is a specific type of visualization which displays
  /// a metric classified into "Used" and "Free" buckets.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart>>? memoryUtilizationCharts;
  /// (Output)
  /// Describes a collection of data points rendered as a Chart.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatOperatingSystem>>? operatingSystems;
  /// (Output)
  /// Describes a collection of data points rendered as a Chart.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance>>? softwareInstances;
  /// (Output)
  /// A Histogram Chart shows a distribution of values into buckets, showing
  /// a count of values which fall into a bucket.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram>>? storageBytesHistograms;
  /// (Output)
  /// Utilization Chart is a specific type of visualization which displays
  /// a metric classified into "Used" and "Free" buckets.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatStorageUtilizationChart>>? storageUtilizationCharts;
  /// (Output)
  /// Count of the number of unique assets in this collection.
  final pulumi.Input<String>? totalAssets;
  /// (Output)
  /// Sum of the CPU core count of all the assets in this collection.
  final pulumi.Input<String>? totalCores;
  /// (Output)
  /// Sum of the memory in bytes of all the assets in this collection.
  final pulumi.Input<String>? totalMemoryBytes;
  /// (Output)
  /// Sum of persistent storage in bytes of all the assets in this collection.
  final pulumi.Input<String>? totalStorageBytes;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStat].
  /// [coreCountHistograms] (Output)
  /// [memoryBytesHistograms] (Output)
  /// [memoryUtilizationCharts] (Output)
  /// [operatingSystems] (Output)
  /// [softwareInstances] (Output)
  /// [storageBytesHistograms] (Output)
  /// [storageUtilizationCharts] (Output)
  /// [totalAssets] (Output)
  /// [totalCores] (Output)
  /// [totalMemoryBytes] (Output)
  /// [totalStorageBytes] (Output)
  const ReportSummaryGroupFindingAssetAggregateStat({
    this.coreCountHistograms,
    this.memoryBytesHistograms,
    this.memoryUtilizationCharts,
    this.operatingSystems,
    this.softwareInstances,
    this.storageBytesHistograms,
    this.storageUtilizationCharts,
    this.totalAssets,
    this.totalCores,
    this.totalMemoryBytes,
    this.totalStorageBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCountHistograms': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram>, List<Map<String, dynamic>>>(coreCountHistograms, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryBytesHistograms': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatMemoryBytesHistogram>, List<Map<String, dynamic>>>(memoryBytesHistograms, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatMemoryBytesHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryUtilizationCharts': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart>, List<Map<String, dynamic>>>(memoryUtilizationCharts, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystems': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatOperatingSystem>, List<Map<String, dynamic>>>(operatingSystems, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatOperatingSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'softwareInstances': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance>, List<Map<String, dynamic>>>(softwareInstances, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBytesHistograms': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram>, List<Map<String, dynamic>>>(storageBytesHistograms, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageUtilizationCharts': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatStorageUtilizationChart>, List<Map<String, dynamic>>>(storageUtilizationCharts, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatStorageUtilizationChart, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalAssets': ?totalAssets,
      'totalCores': ?totalCores,
      'totalMemoryBytes': ?totalMemoryBytes,
      'totalStorageBytes': ?totalStorageBytes,
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStat.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStat(
      coreCountHistograms: (() { final guardedValue = map['coreCountHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memoryBytesHistograms: (() { final guardedValue = map['memoryBytesHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatMemoryBytesHistogram>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatMemoryBytesHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memoryUtilizationCharts: (() { final guardedValue = map['memoryUtilizationCharts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operatingSystems: (() { final guardedValue = map['operatingSystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatOperatingSystem>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatOperatingSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      softwareInstances: (() { final guardedValue = map['softwareInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageBytesHistograms: (() { final guardedValue = map['storageBytesHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageUtilizationCharts: (() { final guardedValue = map['storageUtilizationCharts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatStorageUtilizationChart>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatStorageUtilizationChart.fromMap((value as Map).cast<String, dynamic>()))); })(),
      totalAssets: (() { final guardedValue = map['totalAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalCores: (() { final guardedValue = map['totalCores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalMemoryBytes: (() { final guardedValue = map['totalMemoryBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalStorageBytes: (() { final guardedValue = map['totalStorageBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
