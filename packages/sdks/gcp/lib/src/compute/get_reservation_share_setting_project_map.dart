// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationShareSettingProjectMap {
  final pulumi.Input<String> id;
  /// The project id/number, should be same as the key of this project config in the project map.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetReservationShareSettingProjectMap].
  /// [id] Required.
  /// [projectId] The project id/number, should be same as the key of this project config in the project map.
  const GetReservationShareSettingProjectMap({
    required this.id,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'projectId': projectId,
    };
  }

  factory GetReservationShareSettingProjectMap.fromMap(Map<String, dynamic> map) {
    return GetReservationShareSettingProjectMap(
      id: pulumi.Input.fromValue(map['id'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

