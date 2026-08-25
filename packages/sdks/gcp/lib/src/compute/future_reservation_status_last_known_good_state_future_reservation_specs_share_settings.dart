// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_future_reservation_specs_share_settings_project_map.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings {
  /// A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// Structure is documented below.
  final pulumi.Input<List<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap>?>? projectMaps;
  /// list of Project names to specify consumer projects for this shared-reservation. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  final pulumi.Input<List<String>?>? projects;
  /// Type of sharing for this future reservation.
  /// Possible values are: `LOCAL`, `SPECIFIC_PROJECTS`.
  final pulumi.Input<String?>? shareType;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings].
  /// [projectMaps] A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [projects] list of Project names to specify consumer projects for this shared-reservation. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this future reservation.
  const FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings({
    this.projectMaps,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMaps': ?pulumi.Input.mapOptionalInputValue<List<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap>, List<Map<String, dynamic>>>(projectMaps, (value) => pulumi.Input.encodeList<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projects': ?projects,
      'shareType': ?shareType,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings(
      projectMaps: (() { final guardedValue = map['projectMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap>(guardedValue, (value) => FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      projects: (() { final guardedValue = map['projects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      shareType: (() { final guardedValue = map['shareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
