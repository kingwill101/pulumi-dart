// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exempt_priority_level_configuration_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'limited_priority_level_configuration_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
class PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1beta3 {
  /// `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  final pulumi.Input<ExemptPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3>? exempt;
  /// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  final pulumi.Input<LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3>? limited;
  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  final pulumi.Input<String>? type;

  /// Creates a new [PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1beta3].
  /// [exempt] `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  /// [limited] `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  /// [type] `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1beta3({
    this.exempt,
    this.limited,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exempt': ?pulumi.Input.mapOptionalInputValue<ExemptPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(exempt, (value) => value.toMap()),
      'limited': ?pulumi.Input.mapOptionalInputValue<LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(limited, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1beta3(
      exempt: map['exempt'] == null ? null : (ExemptPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3.fromMap((map['exempt'] as Map).cast<String, dynamic>())).input(),
      limited: map['limited'] == null ? null : (LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta3.fromMap((map['limited'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

