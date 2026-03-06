// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_acl_private_endpoint.dart';
import 'service_network_acl_public_network.dart';

/// Input properties used for looking up and filtering ServiceNetworkAcl resources.
class ServiceNetworkAclState {
  /// The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String>? defaultAction;
  /// A `private_endpoint` block as defined below.
  final pulumi.Input<List<ServiceNetworkAclPrivateEndpoint>>? privateEndpoints;
  /// A `public_network` block as defined below.
  final pulumi.Input<ServiceNetworkAclPublicNetwork>? publicNetwork;
  /// The ID of the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? signalrServiceId;

  /// Creates a new [ServiceNetworkAclState].
  /// [defaultAction] The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`.
  /// [privateEndpoints] A `private_endpoint` block as defined below.
  /// [publicNetwork] A `public_network` block as defined below.
  /// [signalrServiceId] The ID of the SignalR service. Changing this forces a new resource to be created.
  const ServiceNetworkAclState({
    this.defaultAction,
    this.privateEndpoints,
    this.publicNetwork,
    this.signalrServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'privateEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceNetworkAclPrivateEndpoint>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<ServiceNetworkAclPrivateEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetwork': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkAclPublicNetwork, Map<String, dynamic>>(publicNetwork, (value) => value.toMap()),
      'signalrServiceId': ?signalrServiceId,
    };
  }

  factory ServiceNetworkAclState.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkAclState(
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoints: (() { final guardedValue = map['privateEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceNetworkAclPrivateEndpoint>(guardedValue, (value) => ServiceNetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetwork: (() { final guardedValue = map['publicNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceNetworkAclPublicNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signalrServiceId: (() { final guardedValue = map['signalrServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

