// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'limited_priority_level_configuration_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
class PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1alpha1 {
  /// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  final pulumi.Input<LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1>? limited;
  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  final pulumi.Input<String>? type;

  /// Creates a new [PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [limited] `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  /// [type] `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1alpha1({
    this.limited,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limited': ?pulumi.Input.mapOptionalInputValue<LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(limited, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1alpha1(
      limited: map['limited'] == null ? null : (LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((map['limited'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

