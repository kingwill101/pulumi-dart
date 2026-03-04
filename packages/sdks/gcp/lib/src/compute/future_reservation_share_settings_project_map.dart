// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationShareSettingsProjectMap {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> id;

  /// The project ID, should be same as the key of this project config in the parent map.
  final pulumi.Input<String>? projectId;

  /// Creates a new [FutureReservationShareSettingsProjectMap].
  /// [id] The identifier for this object. Format specified above.
  /// [projectId] The project ID, should be same as the key of this project config in the parent map.
  FutureReservationShareSettingsProjectMap({required this.id, this.projectId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'projectId': ?projectId};
  }

  factory FutureReservationShareSettingsProjectMap.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationShareSettingsProjectMap(
      id: pulumi.Input.fromValue(map['id'] as String),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
