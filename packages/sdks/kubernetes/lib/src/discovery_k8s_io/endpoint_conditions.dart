// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EndpointConditions represents the current condition of an endpoint.
class EndpointConditions {
  /// ready indicates that this endpoint is ready to receive traffic, according to whatever system is managing the endpoint. A nil value should be interpreted as "true". In general, an endpoint should be marked ready if it is serving and not terminating, though this can be overridden in some cases, such as when the associated Service has set the publishNotReadyAddresses flag.
  final pulumi.Input<bool?>? ready;
  /// serving indicates that this endpoint is able to receive traffic, according to whatever system is managing the endpoint. For endpoints backed by pods, the EndpointSlice controller will mark the endpoint as serving if the pod's Ready condition is True. A nil value should be interpreted as "true".
  final pulumi.Input<bool?>? serving;
  /// terminating indicates that this endpoint is terminating. A nil value should be interpreted as "false".
  final pulumi.Input<bool?>? terminating;

  /// Creates a new [EndpointConditions].
  /// [ready] ready indicates that this endpoint is ready to receive traffic, according to whatever system is managing the endpoint. A nil value should be interpreted as "true". In general, an endpoint should be marked ready if it is serving and not terminating, though this can be overridden in some cases, such as when the associated Service has set the publishNotReadyAddresses flag.
  /// [serving] serving indicates that this endpoint is able to receive traffic, according to whatever system is managing the endpoint. For endpoints backed by pods, the EndpointSlice controller will mark the endpoint as serving if the pod's Ready condition is True. A nil value should be interpreted as "true".
  /// [terminating] terminating indicates that this endpoint is terminating. A nil value should be interpreted as "false".
  const EndpointConditions({
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

  factory EndpointConditions.fromMap(Map<String, dynamic> map) {
    return EndpointConditions(
      ready: (() { final guardedValue = map['ready']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serving: (() { final guardedValue = map['serving']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminating: (() { final guardedValue = map['terminating']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
