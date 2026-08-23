// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_series_response_migrationcenter_v1alpha1.dart';

/// Represents a data point tracking the count of assets allocated for a specific Machine Series.
class ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1 {
  /// Count of assets allocated to this machine series.
  final pulumi.Input<String> allocatedAssetCount;
  /// The Machine Series (e.g. "E2", "N2")
  final pulumi.Input<MachineSeriesResponseMigrationcenterV1alpha1> machineSeries;

  /// Creates a new [ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1].
  /// [allocatedAssetCount] Count of assets allocated to this machine series.
  /// [machineSeries] The Machine Series (e.g. "E2", "N2")
  const ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1({
    required this.allocatedAssetCount,
    required this.machineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'machineSeries': pulumi.Input.mapInputValue<MachineSeriesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(machineSeries, (value) => value.toMap()),
    };
  }

  factory ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1(
      allocatedAssetCount: pulumi.Input.fromValue(map['allocatedAssetCount'] as String),
      machineSeries: pulumi.Input.fromValue(MachineSeriesResponseMigrationcenterV1alpha1.fromMap((map['machineSeries']! as Map).cast<String, dynamic>())),
    );
  }
}
