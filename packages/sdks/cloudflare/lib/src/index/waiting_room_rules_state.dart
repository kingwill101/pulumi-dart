// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_rules_rule.dart';

/// Input properties used for looking up and filtering WaitingRoomRules resources.
class WaitingRoomRulesState {
  final pulumi.Input<List<WaitingRoomRulesRule>?>? rules;
  final pulumi.Input<String?>? waitingRoomId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [WaitingRoomRulesState].
  /// [rules] Optional.
  /// [waitingRoomId] Optional.
  /// [zoneId] Identifier.
  const WaitingRoomRulesState({
    this.rules,
    this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<WaitingRoomRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<WaitingRoomRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitingRoomId': ?waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory WaitingRoomRulesState.fromMap(Map<String, dynamic> map) {
    return WaitingRoomRulesState(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WaitingRoomRulesRule>(guardedValue, (value) => WaitingRoomRulesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitingRoomId: (() { final guardedValue = map['waitingRoomId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
