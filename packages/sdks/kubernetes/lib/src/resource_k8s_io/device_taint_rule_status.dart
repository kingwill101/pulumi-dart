// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';

/// DeviceTaintRuleStatus provides information about an on-going pod eviction.
class DeviceTaintRuleStatus {
  /// Conditions provide information about the state of the DeviceTaintRule and the cluster at some point in time, in a machine-readable and human-readable format.
  ///
  /// The following condition is currently defined as part of this API, more may get added: - Type: EvictionInProgress - Status: True if there are currently pods which need to be evicted, False otherwise
  /// (includes the effects which don't cause eviction).
  /// - Reason: not specified, may change - Message: includes information about number of pending pods and already evicted pods
  /// in a human-readable format, updated periodically, may change
  ///
  /// For `effect: None`, the condition above gets set once for each change to the spec, with the message containing information about what would happen if the effect was `NoExecute`. This feedback can be used to decide whether changing the effect to `NoExecute` will work as intended. It only gets set once to avoid having to constantly update the status.
  ///
  /// Must have 8 or fewer entries.
  final pulumi.Input<List<Condition>>? conditions;

  /// Creates a new [DeviceTaintRuleStatus].
  /// [conditions] Conditions provide information about the state of the DeviceTaintRule and the cluster at some point in time, in a machine-readable and human-readable format.
  const DeviceTaintRuleStatus({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceTaintRuleStatus.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRuleStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

