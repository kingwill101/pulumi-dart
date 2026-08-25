// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_all_assets_stat_core_count_histogram.dart';
import 'report_summary_all_assets_stat_memory_bytes_histogram.dart';
import 'report_summary_all_assets_stat_memory_utilization_chart.dart';
import 'report_summary_all_assets_stat_operating_system.dart';
import 'report_summary_all_assets_stat_software_instance.dart';
import 'report_summary_all_assets_stat_storage_bytes_histogram.dart';
import 'report_summary_all_assets_stat_storage_utilization_chart.dart';

class ReportSummaryAllAssetsStat {
  /// (Output)
  /// A Histogram Chart shows a distribution of values into buckets, showing
  /// a count of values which fall into a bucket.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatCoreCountHistogram>?>? coreCountHistograms;
  /// (Output)
  /// A Histogram Chart shows a distribution of values into buckets, showing
  /// a count of values which fall into a bucket.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatMemoryBytesHistogram>?>? memoryBytesHistograms;
  /// (Output)
  /// Utilization Chart is a specific type of visualization which displays
  /// a metric classified into "Used" and "Free" buckets.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatMemoryUtilizationChart>?>? memoryUtilizationCharts;
  /// (Output)
  /// Describes a collection of data points rendered as a Chart.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatOperatingSystem>?>? operatingSystems;
  /// (Output)
  /// Describes a collection of data points rendered as a Chart.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatSoftwareInstance>?>? softwareInstances;
  /// (Output)
  /// A Histogram Chart shows a distribution of values into buckets, showing
  /// a count of values which fall into a bucket.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatStorageBytesHistogram>?>? storageBytesHistograms;
  /// (Output)
  /// Utilization Chart is a specific type of visualization which displays
  /// a metric classified into "Used" and "Free" buckets.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatStorageUtilizationChart>?>? storageUtilizationCharts;
  /// (Output)
  /// Count of the number of unique assets in this collection.
  final pulumi.Input<String?>? totalAssets;
  /// (Output)
  /// Sum of the CPU core count of all the assets in this collection.
  final pulumi.Input<String?>? totalCores;
  /// (Output)
  /// Sum of the memory in bytes of all the assets in this collection.
  final pulumi.Input<String?>? totalMemoryBytes;
  /// (Output)
  /// Sum of persistent storage in bytes of all the assets in this collection.
  final pulumi.Input<String?>? totalStorageBytes;

  /// Creates a new [ReportSummaryAllAssetsStat].
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
  const ReportSummaryAllAssetsStat({
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
      'coreCountHistograms': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatCoreCountHistogram>, List<Map<String, dynamic>>>(coreCountHistograms, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatCoreCountHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryBytesHistograms': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatMemoryBytesHistogram>, List<Map<String, dynamic>>>(memoryBytesHistograms, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatMemoryBytesHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryUtilizationCharts': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatMemoryUtilizationChart>, List<Map<String, dynamic>>>(memoryUtilizationCharts, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatMemoryUtilizationChart, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystems': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatOperatingSystem>, List<Map<String, dynamic>>>(operatingSystems, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatOperatingSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'softwareInstances': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatSoftwareInstance>, List<Map<String, dynamic>>>(softwareInstances, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatSoftwareInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBytesHistograms': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatStorageBytesHistogram>, List<Map<String, dynamic>>>(storageBytesHistograms, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatStorageBytesHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageUtilizationCharts': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatStorageUtilizationChart>, List<Map<String, dynamic>>>(storageUtilizationCharts, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatStorageUtilizationChart, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalAssets': ?totalAssets,
      'totalCores': ?totalCores,
      'totalMemoryBytes': ?totalMemoryBytes,
      'totalStorageBytes': ?totalStorageBytes,
    };
  }

  factory ReportSummaryAllAssetsStat.fromMap(Map<String, dynamic> map) {
    return ReportSummaryAllAssetsStat(
      coreCountHistograms: (() { final guardedValue = map['coreCountHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatCoreCountHistogram>(guardedValue, (value) => ReportSummaryAllAssetsStatCoreCountHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memoryBytesHistograms: (() { final guardedValue = map['memoryBytesHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatMemoryBytesHistogram>(guardedValue, (value) => ReportSummaryAllAssetsStatMemoryBytesHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memoryUtilizationCharts: (() { final guardedValue = map['memoryUtilizationCharts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatMemoryUtilizationChart>(guardedValue, (value) => ReportSummaryAllAssetsStatMemoryUtilizationChart.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operatingSystems: (() { final guardedValue = map['operatingSystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatOperatingSystem>(guardedValue, (value) => ReportSummaryAllAssetsStatOperatingSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      softwareInstances: (() { final guardedValue = map['softwareInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatSoftwareInstance>(guardedValue, (value) => ReportSummaryAllAssetsStatSoftwareInstance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageBytesHistograms: (() { final guardedValue = map['storageBytesHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatStorageBytesHistogram>(guardedValue, (value) => ReportSummaryAllAssetsStatStorageBytesHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageUtilizationCharts: (() { final guardedValue = map['storageUtilizationCharts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatStorageUtilizationChart>(guardedValue, (value) => ReportSummaryAllAssetsStatStorageUtilizationChart.fromMap((value as Map).cast<String, dynamic>()))); })(),
      totalAssets: (() { final guardedValue = map['totalAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalCores: (() { final guardedValue = map['totalCores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalMemoryBytes: (() { final guardedValue = map['totalMemoryBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalStorageBytes: (() { final guardedValue = map['totalStorageBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
