// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_private_endpoint.dart';
import 'network_acl_public_network.dart';

/// Input properties used for looking up and filtering NetworkAcl resources.
class NetworkAclState {
  /// The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  final pulumi.Input<String>? defaultAction;
  /// A `private_endpoint` block as defined below.
  final pulumi.Input<List<NetworkAclPrivateEndpoint>>? privateEndpoints;
  /// A `public_network` block as defined below.
  final pulumi.Input<NetworkAclPublicNetwork>? publicNetwork;
  /// The ID of the Web Pubsub service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? webPubsubId;

  /// Creates a new [NetworkAclState].
  /// [defaultAction] The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  /// [privateEndpoints] A `private_endpoint` block as defined below.
  /// [publicNetwork] A `public_network` block as defined below.
  /// [webPubsubId] The ID of the Web Pubsub service. Changing this forces a new resource to be created.
  NetworkAclState({
    this.defaultAction,
    this.privateEndpoints,
    this.publicNetwork,
    this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'privateEndpoints': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclPrivateEndpoint>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<NetworkAclPrivateEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetwork': ?pulumi.Input.mapOptionalInputValue<NetworkAclPublicNetwork, Map<String, dynamic>>(publicNetwork, (value) => value.toMap()),
      'webPubsubId': ?webPubsubId,
    };
  }

  factory NetworkAclState.fromMap(Map<String, dynamic> map) {
    return NetworkAclState(
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction']! as String).input(),
      privateEndpoints: map['privateEndpoints'] == null ? null : (pulumi.Input.decodeList<NetworkAclPrivateEndpoint>(map['privateEndpoints']!, (value) => NetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetwork: map['publicNetwork'] == null ? null : (NetworkAclPublicNetwork.fromMap((map['publicNetwork']! as Map).cast<String, dynamic>())).input(),
      webPubsubId: map['webPubsubId'] == null ? null : (map['webPubsubId']! as String).input(),
    );
  }
}

