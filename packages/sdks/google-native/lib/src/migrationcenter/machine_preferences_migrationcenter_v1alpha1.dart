// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_series_migrationcenter_v1alpha1.dart';

/// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
class MachinePreferencesMigrationcenterV1alpha1 {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  final pulumi.Input<List<MachineSeriesMigrationcenterV1alpha1>>? allowedMachineSeries;

  /// Creates a new [MachinePreferencesMigrationcenterV1alpha1].
  /// [allowedMachineSeries] Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  MachinePreferencesMigrationcenterV1alpha1({
    this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMachineSeries': ?pulumi.Input.mapOptionalInputValue<List<MachineSeriesMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(allowedMachineSeries, (value) => pulumi.Input.encodeList<MachineSeriesMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MachinePreferencesMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return MachinePreferencesMigrationcenterV1alpha1(
      allowedMachineSeries: map['allowedMachineSeries'] == null ? null : (pulumi.Input.decodeList<MachineSeriesMigrationcenterV1alpha1>(map['allowedMachineSeries']!, (value) => MachineSeriesMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

