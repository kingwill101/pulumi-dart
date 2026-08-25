// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The project ID, should be same as the key of this project config in the parent map.
  final pulumi.Input<String?>? projectId;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap].
  /// [project] The ID of the project in which the resource belongs.
  /// [projectId] The project ID, should be same as the key of this project config in the parent map.
  const FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap({
    required this.project,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'projectId': ?projectId,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap(
      project: pulumi.Input.fromValue(map['project'] as String),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
