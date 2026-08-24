// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_waiting_room_rules_get_waiting_room_rules_args_doc}
/// Arguments for getWaitingRoomRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_waiting_room_rules_get_waiting_room_rules_args_doc}
class GetWaitingRoomRulesArgs {
  final pulumi.Input<String> waitingRoomId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWaitingRoomRulesArgs].
  /// [waitingRoomId] Required.
  /// [zoneId] Identifier.
  const GetWaitingRoomRulesArgs({
    required this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitingRoomId': waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomRulesArgs(
      waitingRoomId: pulumi.Input.fromValue(map['waitingRoomId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
