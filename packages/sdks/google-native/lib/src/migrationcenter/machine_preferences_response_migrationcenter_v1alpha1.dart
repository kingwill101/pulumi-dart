// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_series_response_migrationcenter_v1alpha1.dart';

/// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
class MachinePreferencesResponseMigrationcenterV1alpha1 {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  final pulumi.Input<List<MachineSeriesResponseMigrationcenterV1alpha1>> allowedMachineSeries;

  /// Creates a new [MachinePreferencesResponseMigrationcenterV1alpha1].
  /// [allowedMachineSeries] Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  MachinePreferencesResponseMigrationcenterV1alpha1({
    required this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMachineSeries': pulumi.Input.mapInputValue<List<MachineSeriesResponseMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(allowedMachineSeries, (value) => pulumi.Input.encodeList<MachineSeriesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MachinePreferencesResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return MachinePreferencesResponseMigrationcenterV1alpha1(
      allowedMachineSeries: pulumi.Input.fromValue(pulumi.Input.decodeList<MachineSeriesResponseMigrationcenterV1alpha1>(map['allowedMachineSeries']!, (value) => MachineSeriesResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

