// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EndpointConditions represents the current condition of an endpoint.
class EndpointConditionsPatchDiscoveryK8sIoV1beta1 {
  /// ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.
  final pulumi.Input<bool?>? ready;
  /// serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
  final pulumi.Input<bool?>? serving;
  /// terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
  final pulumi.Input<bool?>? terminating;

  /// Creates a new [EndpointConditionsPatchDiscoveryK8sIoV1beta1].
  /// [ready] ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.
  /// [serving] serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
  /// [terminating] terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
  const EndpointConditionsPatchDiscoveryK8sIoV1beta1({
    this.ready,
    this.serving,
    this.terminating,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ready': ?ready,
      'serving': ?serving,
      'terminating': ?terminating,
    };
  }

  factory EndpointConditionsPatchDiscoveryK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointConditionsPatchDiscoveryK8sIoV1beta1(
      ready: (() { final guardedValue = map['ready']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serving: (() { final guardedValue = map['serving']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminating: (() { final guardedValue = map['terminating']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
