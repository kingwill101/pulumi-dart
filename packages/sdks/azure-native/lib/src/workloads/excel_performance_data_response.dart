// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAP instance specific performance data for Excel import.
class ExcelPerformanceDataResponse {
  /// The data source for this resource.
  /// Expected value is 'Excel'.
  final pulumi.Input<String> dataSource;
  /// Provide the max CPU percentage load on the server. Omit the percentage symbol while filling this value.
  final pulumi.Input<int> maxCpuLoad;
  /// Provide the source Database size in GB. Applicable only if SAP instance type for this server instance is 'DB'.
  final pulumi.Input<int> totalSourceDbSizeGB;

  /// Creates a new [ExcelPerformanceDataResponse].
  /// [dataSource] The data source for this resource.
  /// [maxCpuLoad] Provide the max CPU percentage load on the server. Omit the percentage symbol while filling this value.
  /// [totalSourceDbSizeGB] Provide the source Database size in GB. Applicable only if SAP instance type for this server instance is 'DB'.
  const ExcelPerformanceDataResponse({
    required this.dataSource,
    required this.maxCpuLoad,
    required this.totalSourceDbSizeGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': dataSource,
      'maxCpuLoad': maxCpuLoad,
      'totalSourceDbSizeGB': totalSourceDbSizeGB,
    };
  }

  factory ExcelPerformanceDataResponse.fromMap(Map<String, dynamic> map) {
    return ExcelPerformanceDataResponse(
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
      maxCpuLoad: pulumi.Input.fromValue(map['maxCpuLoad'] as int),
      totalSourceDbSizeGB: pulumi.Input.fromValue(map['totalSourceDbSizeGB'] as int),
    );
  }
}
