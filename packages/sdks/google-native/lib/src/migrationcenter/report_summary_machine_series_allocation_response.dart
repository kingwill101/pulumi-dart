// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_series_response.dart';

/// Represents a data point tracking the count of assets allocated for a specific Machine Series.
class ReportSummaryMachineSeriesAllocationResponse {
  /// Count of assets allocated to this machine series.
  final pulumi.Input<String> allocatedAssetCount;
  /// The Machine Series (e.g. "E2", "N2")
  final pulumi.Input<MachineSeriesResponse> machineSeries;

  /// Creates a new [ReportSummaryMachineSeriesAllocationResponse].
  /// [allocatedAssetCount] Count of assets allocated to this machine series.
  /// [machineSeries] The Machine Series (e.g. "E2", "N2")
  const ReportSummaryMachineSeriesAllocationResponse({
    required this.allocatedAssetCount,
    required this.machineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'machineSeries': pulumi.Input.mapInputValue<MachineSeriesResponse, Map<String, dynamic>>(machineSeries, (value) => value.toMap()),
    };
  }

  factory ReportSummaryMachineSeriesAllocationResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryMachineSeriesAllocationResponse(
      allocatedAssetCount: pulumi.Input.fromValue(map['allocatedAssetCount'] as String),
      machineSeries: pulumi.Input.fromValue(MachineSeriesResponse.fromMap((map['machineSeries']! as Map).cast<String, dynamic>())),
    );
  }
}

