// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';
import 'network_acl.dart';
import 'private_endpoint_acl.dart';

/// Network ACLs for the resource
class WebPubSubNetworkACLs {
  /// Azure Networking ACL Action.
  final pulumi.Input<String>? defaultAction;
  /// IP rules for filtering public traffic
  final pulumi.Input<List<IPRule>>? ipRules;
  /// ACLs for requests from private endpoints
  final pulumi.Input<List<PrivateEndpointACL>>? privateEndpoints;
  /// Network ACL
  final pulumi.Input<NetworkACL>? publicNetwork;

  /// Creates a new [WebPubSubNetworkACLs].
  /// [defaultAction] Azure Networking ACL Action.
  /// [ipRules] IP rules for filtering public traffic
  /// [privateEndpoints] ACLs for requests from private endpoints
  /// [publicNetwork] Network ACL
  WebPubSubNetworkACLs({
    this.defaultAction,
    this.ipRules,
    this.privateEndpoints,
    this.publicNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpoints': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointACL>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<PrivateEndpointACL, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetwork': ?pulumi.Input.mapOptionalInputValue<NetworkACL, Map<String, dynamic>>(publicNetwork, (value) => value.toMap()),
    };
  }

  factory WebPubSubNetworkACLs.fromMap(Map<String, dynamic> map) {
    return WebPubSubNetworkACLs(
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction'] as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IPRule>(map['ipRules'], (value) => IPRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateEndpoints: map['privateEndpoints'] == null ? null : (pulumi.Input.decodeList<PrivateEndpointACL>(map['privateEndpoints'], (value) => PrivateEndpointACL.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetwork: map['publicNetwork'] == null ? null : (NetworkACL.fromMap((map['publicNetwork'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

