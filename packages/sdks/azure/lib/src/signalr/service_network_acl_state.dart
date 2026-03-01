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
  ServiceNetworkAclState({
    pulumi.Output<String>? defaultAction,
    pulumi.Output<List<ServiceNetworkAclPrivateEndpoint>>? privateEndpoints,
    pulumi.Output<ServiceNetworkAclPublicNetwork>? publicNetwork,
    pulumi.Output<String>? signalrServiceId,
  }) :
      defaultAction = pulumi.Input.asOptionalInput<String>(defaultAction),
      privateEndpoints = pulumi.Input.asOptionalInput<List<ServiceNetworkAclPrivateEndpoint>>(privateEndpoints),
      publicNetwork = pulumi.Input.asOptionalInput<ServiceNetworkAclPublicNetwork>(publicNetwork),
      signalrServiceId = pulumi.Input.asOptionalInput<String>(signalrServiceId);

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
      defaultAction: map['defaultAction'] == null ? null : pulumi.Output.create<String>(map['defaultAction'] as String),
      privateEndpoints: map['privateEndpoints'] == null ? null : pulumi.Output.create<List<ServiceNetworkAclPrivateEndpoint>>(pulumi.Input.decodeList<ServiceNetworkAclPrivateEndpoint>(map['privateEndpoints'], (value) => ServiceNetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetwork: map['publicNetwork'] == null ? null : pulumi.Output.create<ServiceNetworkAclPublicNetwork>(ServiceNetworkAclPublicNetwork.fromMap((map['publicNetwork'] as Map).cast<String, dynamic>())),
      signalrServiceId: map['signalrServiceId'] == null ? null : pulumi.Output.create<String>(map['signalrServiceId'] as String),
    );
  }
}

