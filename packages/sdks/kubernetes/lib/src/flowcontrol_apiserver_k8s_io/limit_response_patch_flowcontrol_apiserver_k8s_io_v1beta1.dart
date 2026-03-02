// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queuing_configuration_patch_flowcontrol_apiserver_k8s_io_v1beta1.dart';

/// LimitResponse defines how to handle requests that can not be executed right now.
class LimitResponsePatchFlowcontrolApiserverK8sIoV1beta1 {
  /// `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  final pulumi.Input<QueuingConfigurationPatchFlowcontrolApiserverK8sIoV1beta1>? queuing;
  /// `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  final pulumi.Input<String>? type;

  /// Creates a new [LimitResponsePatchFlowcontrolApiserverK8sIoV1beta1].
  /// [queuing] `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  /// [type] `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  LimitResponsePatchFlowcontrolApiserverK8sIoV1beta1({
    this.queuing,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queuing': ?pulumi.Input.mapOptionalInputValue<QueuingConfigurationPatchFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(queuing, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory LimitResponsePatchFlowcontrolApiserverK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return LimitResponsePatchFlowcontrolApiserverK8sIoV1beta1(
      queuing: map['queuing'] == null ? null : (QueuingConfigurationPatchFlowcontrolApiserverK8sIoV1beta1.fromMap((map['queuing'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

