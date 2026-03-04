// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_chart_data_response_migrationcenter_v1alpha1.dart';
import 'report_summary_histogram_chart_data_response_migrationcenter_v1alpha1.dart';
import 'report_summary_utilization_chart_data_response_migrationcenter_v1alpha1.dart';

/// Aggregate statistics for a collection of assets.
class ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1 {
  /// Count of assets grouped by age.
  final pulumi.Input<ReportSummaryChartDataResponseMigrationcenterV1alpha1>
  assetAge;

  /// Histogram showing a distribution of CPU core counts.
  final pulumi.Input<
    ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1
  >
  coreCountHistogram;

  /// Histogram showing a distribution of memory sizes.
  final pulumi.Input<
    ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1
  >
  memoryBytesHistogram;

  /// Total memory split into Used/Free buckets.
  final pulumi.Input<ReportSummaryChartDataResponseMigrationcenterV1alpha1>
  memoryUtilization;

  /// Total memory split into Used/Free buckets.
  final pulumi.Input<
    ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1
  >
  memoryUtilizationChart;

  /// Count of assets grouped by Operating System families.
  final pulumi.Input<ReportSummaryChartDataResponseMigrationcenterV1alpha1>
  operatingSystem;

  /// Histogram showing a distribution of memory sizes.
  final pulumi.Input<
    ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1
  >
  storageBytesHistogram;

  /// Total storage split into Used/Free buckets.
  final pulumi.Input<ReportSummaryChartDataResponseMigrationcenterV1alpha1>
  storageUtilization;

  /// Total memory split into Used/Free buckets.
  final pulumi.Input<
    ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1
  >
  storageUtilizationChart;

  /// Count of the number of unique assets in this collection.
  final pulumi.Input<String> totalAssets;

  /// Sum of the CPU core count of all the assets in this collection.
  final pulumi.Input<String> totalCores;

  /// Sum of the memory in bytes of all the assets in this collection.
  final pulumi.Input<String> totalMemoryBytes;

  /// Sum of persistent storage in bytes of all the assets in this collection.
  final pulumi.Input<String> totalStorageBytes;

  /// Creates a new [ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1].
  /// [assetAge] Count of assets grouped by age.
  /// [coreCountHistogram] Histogram showing a distribution of CPU core counts.
  /// [memoryBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [memoryUtilization] Total memory split into Used/Free buckets.
  /// [memoryUtilizationChart] Total memory split into Used/Free buckets.
  /// [operatingSystem] Count of assets grouped by Operating System families.
  /// [storageBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [storageUtilization] Total storage split into Used/Free buckets.
  /// [storageUtilizationChart] Total memory split into Used/Free buckets.
  /// [totalAssets] Count of the number of unique assets in this collection.
  /// [totalCores] Sum of the CPU core count of all the assets in this collection.
  /// [totalMemoryBytes] Sum of the memory in bytes of all the assets in this collection.
  /// [totalStorageBytes] Sum of persistent storage in bytes of all the assets in this collection.
  ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1({
    required this.assetAge,
    required this.coreCountHistogram,
    required this.memoryBytesHistogram,
    required this.memoryUtilization,
    required this.memoryUtilizationChart,
    required this.operatingSystem,
    required this.storageBytesHistogram,
    required this.storageUtilization,
    required this.storageUtilizationChart,
    required this.totalAssets,
    required this.totalCores,
    required this.totalMemoryBytes,
    required this.totalStorageBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetAge':
          pulumi.Input.mapInputValue<
            ReportSummaryChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(assetAge, (value) => value.toMap()),
      'coreCountHistogram':
          pulumi.Input.mapInputValue<
            ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(coreCountHistogram, (value) => value.toMap()),
      'memoryBytesHistogram':
          pulumi.Input.mapInputValue<
            ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(memoryBytesHistogram, (value) => value.toMap()),
      'memoryUtilization':
          pulumi.Input.mapInputValue<
            ReportSummaryChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(memoryUtilization, (value) => value.toMap()),
      'memoryUtilizationChart':
          pulumi.Input.mapInputValue<
            ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(memoryUtilizationChart, (value) => value.toMap()),
      'operatingSystem':
          pulumi.Input.mapInputValue<
            ReportSummaryChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(operatingSystem, (value) => value.toMap()),
      'storageBytesHistogram':
          pulumi.Input.mapInputValue<
            ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(storageBytesHistogram, (value) => value.toMap()),
      'storageUtilization':
          pulumi.Input.mapInputValue<
            ReportSummaryChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(storageUtilization, (value) => value.toMap()),
      'storageUtilizationChart':
          pulumi.Input.mapInputValue<
            ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1,
            Map<String, dynamic>
          >(storageUtilizationChart, (value) => value.toMap()),
      'totalAssets': totalAssets,
      'totalCores': totalCores,
      'totalMemoryBytes': totalMemoryBytes,
      'totalStorageBytes': totalStorageBytes,
    };
  }

  factory ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1(
      assetAge: pulumi.Input.fromValue(
        ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['assetAge']! as Map).cast<String, dynamic>(),
        ),
      ),
      coreCountHistogram: pulumi.Input.fromValue(
        ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['coreCountHistogram']! as Map).cast<String, dynamic>(),
        ),
      ),
      memoryBytesHistogram: pulumi.Input.fromValue(
        ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['memoryBytesHistogram']! as Map).cast<String, dynamic>(),
        ),
      ),
      memoryUtilization: pulumi.Input.fromValue(
        ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['memoryUtilization']! as Map).cast<String, dynamic>(),
        ),
      ),
      memoryUtilizationChart: pulumi.Input.fromValue(
        ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['memoryUtilizationChart']! as Map).cast<String, dynamic>(),
        ),
      ),
      operatingSystem: pulumi.Input.fromValue(
        ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['operatingSystem']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageBytesHistogram: pulumi.Input.fromValue(
        ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['storageBytesHistogram']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageUtilization: pulumi.Input.fromValue(
        ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['storageUtilization']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageUtilizationChart: pulumi.Input.fromValue(
        ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1.fromMap(
          (map['storageUtilizationChart']! as Map).cast<String, dynamic>(),
        ),
      ),
      totalAssets: pulumi.Input.fromValue(map['totalAssets'] as String),
      totalCores: pulumi.Input.fromValue(map['totalCores'] as String),
      totalMemoryBytes: pulumi.Input.fromValue(
        map['totalMemoryBytes'] as String,
      ),
      totalStorageBytes: pulumi.Input.fromValue(
        map['totalStorageBytes'] as String,
      ),
    );
  }
}
