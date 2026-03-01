// ignore_for_file: unused_element, unnecessary_cast


/// The SAP instance specific performance data for Excel import.
class ExcelPerformanceDataResponse {
  /// The data source for this resource.
  /// Expected value is 'Excel'.
  final String dataSource;
  /// Provide the max CPU percentage load on the server. Omit the percentage symbol while filling this value.
  final int maxCpuLoad;
  /// Provide the source Database size in GB. Applicable only if SAP instance type for this server instance is 'DB'.
  final int totalSourceDbSizeGB;

  /// Creates a new [ExcelPerformanceDataResponse].
  /// [dataSource] The data source for this resource.
  /// [maxCpuLoad] Provide the max CPU percentage load on the server. Omit the percentage symbol while filling this value.
  /// [totalSourceDbSizeGB] Provide the source Database size in GB. Applicable only if SAP instance type for this server instance is 'DB'.
  ExcelPerformanceDataResponse({
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
      dataSource: map['dataSource'] as String,
      maxCpuLoad: map['maxCpuLoad'] as int,
      totalSourceDbSizeGB: map['totalSourceDbSizeGB'] as int,
    );
  }
}

