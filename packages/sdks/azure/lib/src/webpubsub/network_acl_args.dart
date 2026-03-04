// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_private_endpoint.dart';
import 'network_acl_public_network.dart';

/// {@template pulumi_webpubsub_network_acl_network_acl_args_doc}
/// The set of arguments for NetworkAcl.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_network_acl_network_acl_args_doc}
class NetworkAclArgs {
  /// The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  final pulumi.Input<String>? defaultAction;

  /// A `private_endpoint` block as defined below.
  final pulumi.Input<List<NetworkAclPrivateEndpoint>>? privateEndpoints;

  /// A `public_network` block as defined below.
  final pulumi.Input<NetworkAclPublicNetwork> publicNetwork;

  /// The ID of the Web Pubsub service. Changing this forces a new resource to be created.
  final pulumi.Input<String> webPubsubId;

  /// Creates a new [NetworkAclArgs].
  /// [defaultAction] The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  /// [privateEndpoints] A `private_endpoint` block as defined below.
  /// [publicNetwork] A `public_network` block as defined below.
  /// [webPubsubId] The ID of the Web Pubsub service. Changing this forces a new resource to be created.
  NetworkAclArgs({
    this.defaultAction,
    this.privateEndpoints,
    required this.publicNetwork,
    required this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'privateEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkAclPrivateEndpoint>,
            List<Map<String, dynamic>>
          >(
            privateEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkAclPrivateEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'publicNetwork':
          pulumi.Input.mapInputValue<
            NetworkAclPublicNetwork,
            Map<String, dynamic>
          >(publicNetwork, (value) => value.toMap()),
      'webPubsubId': webPubsubId,
    };
  }

  factory NetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclArgs(
      defaultAction: (() {
        final guardedValue = map['defaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpoints: (() {
        final guardedValue = map['privateEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkAclPrivateEndpoint>(
            guardedValue,
            (value) => NetworkAclPrivateEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      publicNetwork: pulumi.Input.fromValue(
        NetworkAclPublicNetwork.fromMap(
          (map['publicNetwork']! as Map).cast<String, dynamic>(),
        ),
      ),
      webPubsubId: pulumi.Input.fromValue(map['webPubsubId'] as String),
    );
  }
}
