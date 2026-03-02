// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';

/// ServiceCIDRStatus describes the current state of the ServiceCIDR.
class ServiceCIDRStatusPatchNetworkingK8sIoV1beta1 {
  /// conditions holds an array of metav1.Condition that describe the state of the ServiceCIDR. Current service state
  final pulumi.Input<List<ConditionPatch>>? conditions;

  /// Creates a new [ServiceCIDRStatusPatchNetworkingK8sIoV1beta1].
  /// [conditions] conditions holds an array of metav1.Condition that describe the state of the ServiceCIDR. Current service state
  ServiceCIDRStatusPatchNetworkingK8sIoV1beta1({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceCIDRStatusPatchNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ServiceCIDRStatusPatchNetworkingK8sIoV1beta1(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionPatch>(map['conditions'], (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

