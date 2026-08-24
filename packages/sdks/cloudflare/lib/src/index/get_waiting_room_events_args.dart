// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_waiting_room_events_get_waiting_room_events_args_doc}
/// Arguments for getWaitingRoomEvents.
/// {@endtemplate}
/// {@macro pulumi_index_get_waiting_room_events_get_waiting_room_events_args_doc}
class GetWaitingRoomEventsArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String> waitingRoomId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWaitingRoomEventsArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [waitingRoomId] Required.
  /// [zoneId] Identifier.
  const GetWaitingRoomEventsArgs({
    this.maxItems,
    required this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'waitingRoomId': waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomEventsArgs.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomEventsArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      waitingRoomId: pulumi.Input.fromValue(map['waitingRoomId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
