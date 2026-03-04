// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_chart_data_response.dart';
import 'report_summary_histogram_chart_data_response.dart';
import 'report_summary_utilization_chart_data_response.dart';

/// Aggregate statistics for a collection of assets.
class ReportSummaryAssetAggregateStatsResponse {
  /// Histogram showing a distribution of CPU core counts.
  final pulumi.Input<ReportSummaryHistogramChartDataResponse>
  coreCountHistogram;

  /// Histogram showing a distribution of memory sizes.
  final pulumi.Input<ReportSummaryHistogramChartDataResponse>
  memoryBytesHistogram;

  /// Total memory split into Used/Free buckets.
  final pulumi.Input<ReportSummaryUtilizationChartDataResponse>
  memoryUtilizationChart;

  /// Count of assets grouped by Operating System families.
  final pulumi.Input<ReportSummaryChartDataResponse> operatingSystem;

  /// Histogram showing a distribution of memory sizes.
  final pulumi.Input<ReportSummaryHistogramChartDataResponse>
  storageBytesHistogram;

  /// Total memory split into Used/Free buckets.
  final pulumi.Input<ReportSummaryUtilizationChartDataResponse>
  storageUtilizationChart;

  /// Count of the number of unique assets in this collection.
  final pulumi.Input<String> totalAssets;

  /// Sum of the CPU core count of all the assets in this collection.
  final pulumi.Input<String> totalCores;

  /// Sum of the memory in bytes of all the assets in this collection.
  final pulumi.Input<String> totalMemoryBytes;

  /// Sum of persistent storage in bytes of all the assets in this collection.
  final pulumi.Input<String> totalStorageBytes;

  /// Creates a new [ReportSummaryAssetAggregateStatsResponse].
  /// [coreCountHistogram] Histogram showing a distribution of CPU core counts.
  /// [memoryBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [memoryUtilizationChart] Total memory split into Used/Free buckets.
  /// [operatingSystem] Count of assets grouped by Operating System families.
  /// [storageBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [storageUtilizationChart] Total memory split into Used/Free buckets.
  /// [totalAssets] Count of the number of unique assets in this collection.
  /// [totalCores] Sum of the CPU core count of all the assets in this collection.
  /// [totalMemoryBytes] Sum of the memory in bytes of all the assets in this collection.
  /// [totalStorageBytes] Sum of persistent storage in bytes of all the assets in this collection.
  ReportSummaryAssetAggregateStatsResponse({
    required this.coreCountHistogram,
    required this.memoryBytesHistogram,
    required this.memoryUtilizationChart,
    required this.operatingSystem,
    required this.storageBytesHistogram,
    required this.storageUtilizationChart,
    required this.totalAssets,
    required this.totalCores,
    required this.totalMemoryBytes,
    required this.totalStorageBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCountHistogram':
          pulumi.Input.mapInputValue<
            ReportSummaryHistogramChartDataResponse,
            Map<String, dynamic>
          >(coreCountHistogram, (value) => value.toMap()),
      'memoryBytesHistogram':
          pulumi.Input.mapInputValue<
            ReportSummaryHistogramChartDataResponse,
            Map<String, dynamic>
          >(memoryBytesHistogram, (value) => value.toMap()),
      'memoryUtilizationChart':
          pulumi.Input.mapInputValue<
            ReportSummaryUtilizationChartDataResponse,
            Map<String, dynamic>
          >(memoryUtilizationChart, (value) => value.toMap()),
      'operatingSystem':
          pulumi.Input.mapInputValue<
            ReportSummaryChartDataResponse,
            Map<String, dynamic>
          >(operatingSystem, (value) => value.toMap()),
      'storageBytesHistogram':
          pulumi.Input.mapInputValue<
            ReportSummaryHistogramChartDataResponse,
            Map<String, dynamic>
          >(storageBytesHistogram, (value) => value.toMap()),
      'storageUtilizationChart':
          pulumi.Input.mapInputValue<
            ReportSummaryUtilizationChartDataResponse,
            Map<String, dynamic>
          >(storageUtilizationChart, (value) => value.toMap()),
      'totalAssets': totalAssets,
      'totalCores': totalCores,
      'totalMemoryBytes': totalMemoryBytes,
      'totalStorageBytes': totalStorageBytes,
    };
  }

  factory ReportSummaryAssetAggregateStatsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReportSummaryAssetAggregateStatsResponse(
      coreCountHistogram: pulumi.Input.fromValue(
        ReportSummaryHistogramChartDataResponse.fromMap(
          (map['coreCountHistogram']! as Map).cast<String, dynamic>(),
        ),
      ),
      memoryBytesHistogram: pulumi.Input.fromValue(
        ReportSummaryHistogramChartDataResponse.fromMap(
          (map['memoryBytesHistogram']! as Map).cast<String, dynamic>(),
        ),
      ),
      memoryUtilizationChart: pulumi.Input.fromValue(
        ReportSummaryUtilizationChartDataResponse.fromMap(
          (map['memoryUtilizationChart']! as Map).cast<String, dynamic>(),
        ),
      ),
      operatingSystem: pulumi.Input.fromValue(
        ReportSummaryChartDataResponse.fromMap(
          (map['operatingSystem']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageBytesHistogram: pulumi.Input.fromValue(
        ReportSummaryHistogramChartDataResponse.fromMap(
          (map['storageBytesHistogram']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageUtilizationChart: pulumi.Input.fromValue(
        ReportSummaryUtilizationChartDataResponse.fromMap(
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
