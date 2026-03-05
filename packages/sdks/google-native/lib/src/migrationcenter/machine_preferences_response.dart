// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_series_response.dart';

/// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
class MachinePreferencesResponse {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  final pulumi.Input<List<MachineSeriesResponse>> allowedMachineSeries;

  /// Creates a new [MachinePreferencesResponse].
  /// [allowedMachineSeries] Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  MachinePreferencesResponse({
    required this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMachineSeries': pulumi.Input.mapInputValue<List<MachineSeriesResponse>, List<Map<String, dynamic>>>(allowedMachineSeries, (value) => pulumi.Input.encodeList<MachineSeriesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MachinePreferencesResponse.fromMap(Map<String, dynamic> map) {
    return MachinePreferencesResponse(
      allowedMachineSeries: pulumi.Input.fromValue(pulumi.Input.decodeList<MachineSeriesResponse>(map['allowedMachineSeries']!, (value) => MachineSeriesResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

