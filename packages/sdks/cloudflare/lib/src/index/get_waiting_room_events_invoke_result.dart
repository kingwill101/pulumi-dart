// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waiting_room_events_result.dart';

/// Result data returned by getWaitingRoomEvents.
class GetWaitingRoomEventsInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetWaitingRoomEventsResult>? results;
  final String? waitingRoomId;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetWaitingRoomEventsInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [waitingRoomId] Optional.
  /// [zoneId] Identifier.
  const GetWaitingRoomEventsInvokeResult({
    this.maxItems,
    this.results,
    this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWaitingRoomEventsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'waitingRoomId': ?waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomEventsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomEventsInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWaitingRoomEventsResult>(guardedValue, (value) => GetWaitingRoomEventsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      waitingRoomId: (() { final guardedValue = map['waitingRoomId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
