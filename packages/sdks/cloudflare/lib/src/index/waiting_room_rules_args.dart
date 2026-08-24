// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_rules_rule.dart';

/// {@template pulumi_index_waiting_room_rules_waiting_room_rules_args_doc}
/// The set of arguments for WaitingRoomRules.
/// {@endtemplate}
/// {@macro pulumi_index_waiting_room_rules_waiting_room_rules_args_doc}
class WaitingRoomRulesArgs {
  final pulumi.Input<List<WaitingRoomRulesRule>> rules;
  final pulumi.Input<String> waitingRoomId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [WaitingRoomRulesArgs].
  /// [rules] Required.
  /// [waitingRoomId] Required.
  /// [zoneId] Identifier.
  const WaitingRoomRulesArgs({
    required this.rules,
    required this.waitingRoomId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<WaitingRoomRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<WaitingRoomRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitingRoomId': waitingRoomId,
      'zoneId': zoneId,
    };
  }

  factory WaitingRoomRulesArgs.fromMap(Map<String, dynamic> map) {
    return WaitingRoomRulesArgs(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<WaitingRoomRulesRule>(map['rules']!, (value) => WaitingRoomRulesRule.fromMap((value as Map).cast<String, dynamic>()))),
      waitingRoomId: pulumi.Input.fromValue(map['waitingRoomId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
