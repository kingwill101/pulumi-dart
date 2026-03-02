// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exempt_priority_level_configuration_flowcontrol_apiserver_k8s_io_v1beta2.dart';
import 'limited_priority_level_configuration_flowcontrol_apiserver_k8s_io_v1beta2.dart';

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
class PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2 {
  /// `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  final pulumi.Input<ExemptPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2>? exempt;
  /// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  final pulumi.Input<LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2>? limited;
  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  final pulumi.Input<String> type;

  /// Creates a new [PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2].
  /// [exempt] `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  /// [limited] `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  /// [type] `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2({
    this.exempt,
    this.limited,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exempt': ?pulumi.Input.mapOptionalInputValue<ExemptPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(exempt, (value) => value.toMap()),
      'limited': ?pulumi.Input.mapOptionalInputValue<LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(limited, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2(
      exempt: map['exempt'] == null ? null : (ExemptPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2.fromMap((map['exempt'] as Map).cast<String, dynamic>())).input(),
      limited: map['limited'] == null ? null : (LimitedPriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2.fromMap((map['limited'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

