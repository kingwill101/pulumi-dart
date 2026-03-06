// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_get_listener_v2_get_listener_v2_args_doc}
/// Arguments for getListenerV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_get_listener_v2_get_listener_v2_args_doc}
class GetListenerV2Args {
  /// The ID of the listener. Exactly one of `name`,
  /// `listener_id` is required to be set.
  final pulumi.Input<String>? listenerId;
  /// The ID of the load balancer associated with
  /// the requested listener.
  final pulumi.Input<String>? loadbalancerId;
  /// The name of the listener. Exactly one of `name`,
  /// `listener_id` is required to be set.
  final pulumi.Input<String>? name;
  /// The protocol of the requested listener.
  final pulumi.Input<String>? protocol;
  /// The port on which the requested listener accepts client traffic.
  final pulumi.Input<int>? protocolPort;
  /// The region in which to obtain the V2 Load Balancer client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// A set of tags applied to the loadbalancer's listener.
  /// The loadbalancer' listener will be returned if it has all of the specified tags.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetListenerV2Args].
  /// [listenerId] The ID of the listener. Exactly one of `name`,
  /// [loadbalancerId] The ID of the load balancer associated with
  /// [name] The name of the listener. Exactly one of `name`,
  /// [protocol] The protocol of the requested listener.
  /// [protocolPort] The port on which the requested listener accepts client traffic.
  /// [region] The region in which to obtain the V2 Load Balancer client.
  /// [tags] A set of tags applied to the loadbalancer's listener.
  const GetListenerV2Args({
    this.listenerId,
    this.loadbalancerId,
    this.name,
    this.protocol,
    this.protocolPort,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listenerId': ?listenerId,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'protocol': ?protocol,
      'protocolPort': ?protocolPort,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetListenerV2Args.fromMap(Map<String, dynamic> map) {
    return GetListenerV2Args(
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolPort: (() { final guardedValue = map['protocolPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

