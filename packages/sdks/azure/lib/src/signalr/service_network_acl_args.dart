// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_acl_private_endpoint.dart';
import 'service_network_acl_public_network.dart';

/// {@template pulumi_signalr_service_network_acl_service_network_acl_args_doc}
/// The set of arguments for ServiceNetworkAcl.
/// {@endtemplate}
/// {@macro pulumi_signalr_service_network_acl_service_network_acl_args_doc}
class ServiceNetworkAclArgs {
  /// The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> defaultAction;
  /// A `private_endpoint` block as defined below.
  final pulumi.Input<List<ServiceNetworkAclPrivateEndpoint>>? privateEndpoints;
  /// A `public_network` block as defined below.
  final pulumi.Input<ServiceNetworkAclPublicNetwork> publicNetwork;
  /// The ID of the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String> signalrServiceId;

  /// Creates a new [ServiceNetworkAclArgs].
  /// [defaultAction] The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`.
  /// [privateEndpoints] A `private_endpoint` block as defined below.
  /// [publicNetwork] A `public_network` block as defined below.
  /// [signalrServiceId] The ID of the SignalR service. Changing this forces a new resource to be created.
  const ServiceNetworkAclArgs({
    required this.defaultAction,
    this.privateEndpoints,
    required this.publicNetwork,
    required this.signalrServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'privateEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceNetworkAclPrivateEndpoint>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<ServiceNetworkAclPrivateEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetwork': pulumi.Input.mapInputValue<ServiceNetworkAclPublicNetwork, Map<String, dynamic>>(publicNetwork, (value) => value.toMap()),
      'signalrServiceId': signalrServiceId,
    };
  }

  factory ServiceNetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkAclArgs(
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      privateEndpoints: (() { final guardedValue = map['privateEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceNetworkAclPrivateEndpoint>(guardedValue, (value) => ServiceNetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetwork: pulumi.Input.fromValue(ServiceNetworkAclPublicNetwork.fromMap((map['publicNetwork']! as Map).cast<String, dynamic>())),
      signalrServiceId: pulumi.Input.fromValue(map['signalrServiceId'] as String),
    );
  }
}

