// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_waiting_room_event_get_waiting_room_event_args_doc}
/// Arguments for getWaitingRoomEvent.
/// {@endtemplate}
/// {@macro pulumi_index_get_waiting_room_event_get_waiting_room_event_args_doc}
class GetWaitingRoomEventArgs {
  final pulumi.Input<String> eventId;
  final pulumi.Input<String> waitingRoomId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWaitingRoomEventArgs].
  /// [eventId] Required.
  /// [waitingRoomId] Required.
  /// [zoneId] Identifier.
  const GetWaitingRoomEventArgs({
    required this.eventId,
    required this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventId': eventId,
      'waitingRoomId': waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomEventArgs.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomEventArgs(
      eventId: pulumi.Input.fromValue(map['eventId'] as String),
      waitingRoomId: pulumi.Input.fromValue(map['waitingRoomId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
