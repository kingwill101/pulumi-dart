// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';

/// ServiceCIDRStatus describes the current state of the ServiceCIDR.
class ServiceCIDRStatusPatch {
  /// conditions holds an array of metav1.Condition that describe the state of the ServiceCIDR. Current service state
  final pulumi.Input<List<ConditionPatch>>? conditions;

  /// Creates a new [ServiceCIDRStatusPatch].
  /// [conditions] conditions holds an array of metav1.Condition that describe the state of the ServiceCIDR. Current service state
  const ServiceCIDRStatusPatch({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceCIDRStatusPatch.fromMap(Map<String, dynamic> map) {
    return ServiceCIDRStatusPatch(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
