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
  GetListenerV2Args({
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocol,
    pulumi.Output<int>? protocolPort,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? tags,
  }) :
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      protocolPort = pulumi.Input.asOptionalInput<int>(protocolPort),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

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
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      protocolPort: map['protocolPort'] == null ? null : pulumi.Output.create<int>(map['protocolPort'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
    );
  }
}

