// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_share_settings_project_map.dart';

class ReservationShareSettings {
  /// A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationShareSettingsProjectMap>>? projectMaps;
  /// (Optional, Beta)
  /// List of project IDs with which the reservation is shared.
  final pulumi.Input<List<String>>? projects;
  /// Type of sharing for this shared-reservation
  /// Possible values are: `LOCAL`, `SPECIFIC_PROJECTS`.
  final pulumi.Input<String>? shareType;

  /// Creates a new [ReservationShareSettings].
  /// [projectMaps] A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [projects] (Optional, Beta)
  /// [shareType] Type of sharing for this shared-reservation
  const ReservationShareSettings({
    this.projectMaps,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMaps': ?pulumi.Input.mapOptionalInputValue<List<ReservationShareSettingsProjectMap>, List<Map<String, dynamic>>>(projectMaps, (value) => pulumi.Input.encodeList<ReservationShareSettingsProjectMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projects': ?projects,
      'shareType': ?shareType,
    };
  }

  factory ReservationShareSettings.fromMap(Map<String, dynamic> map) {
    return ReservationShareSettings(
      projectMaps: (() { final guardedValue = map['projectMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservationShareSettingsProjectMap>(guardedValue, (value) => ReservationShareSettingsProjectMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      projects: (() { final guardedValue = map['projects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      shareType: (() { final guardedValue = map['shareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
