// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_waiting_room_get_waiting_room_args_doc}
/// Arguments for getWaitingRoom.
/// {@endtemplate}
/// {@macro pulumi_index_get_waiting_room_get_waiting_room_args_doc}
class GetWaitingRoomArgs {
  final pulumi.Input<String> waitingRoomId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWaitingRoomArgs].
  /// [waitingRoomId] Required.
  /// [zoneId] Identifier.
  const GetWaitingRoomArgs({
    required this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitingRoomId': waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomArgs.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomArgs(
      waitingRoomId: pulumi.Input.fromValue(map['waitingRoomId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
