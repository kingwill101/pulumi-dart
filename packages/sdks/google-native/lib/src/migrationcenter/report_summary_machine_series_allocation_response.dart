// ignore_for_file: unused_element, unnecessary_cast

import 'machine_series_response.dart';

/// Represents a data point tracking the count of assets allocated for a specific Machine Series.
class ReportSummaryMachineSeriesAllocationResponse {
  /// Count of assets allocated to this machine series.
  final String allocatedAssetCount;
  /// The Machine Series (e.g. "E2", "N2")
  final MachineSeriesResponse machineSeries;

  /// Creates a new [ReportSummaryMachineSeriesAllocationResponse].
  /// [allocatedAssetCount] Count of assets allocated to this machine series.
  /// [machineSeries] The Machine Series (e.g. "E2", "N2")
  ReportSummaryMachineSeriesAllocationResponse({
    required this.allocatedAssetCount,
    required this.machineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'machineSeries': machineSeries.toMap(),
    };
  }

  factory ReportSummaryMachineSeriesAllocationResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryMachineSeriesAllocationResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      machineSeries: MachineSeriesResponse.fromMap((map['machineSeries'] as Map).cast<String, dynamic>()),
    );
  }
}

