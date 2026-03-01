// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';
import 'network_acl.dart';
import 'private_endpoint_acl.dart';

/// Network ACLs for the resource
class WebPubSubNetworkACLs {
  /// Azure Networking ACL Action.
  final String? defaultAction;
  /// IP rules for filtering public traffic
  final List<IPRule>? ipRules;
  /// ACLs for requests from private endpoints
  final List<PrivateEndpointACL>? privateEndpoints;
  /// Network ACL
  final NetworkACL? publicNetwork;

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
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'privateEndpoints': ?privateEndpoints == null ? null : pulumi.Input.encodeList<PrivateEndpointACL, Map<String, dynamic>>(privateEndpoints!, (value) => value.toMap()),
      'publicNetwork': ?publicNetwork == null ? null : publicNetwork!.toMap(),
    };
  }

  factory WebPubSubNetworkACLs.fromMap(Map<String, dynamic> map) {
    return WebPubSubNetworkACLs(
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRule>(map['ipRules'], (value) => IPRule.fromMap((value as Map).cast<String, dynamic>())),
      privateEndpoints: map['privateEndpoints'] == null ? null : pulumi.Input.decodeList<PrivateEndpointACL>(map['privateEndpoints'], (value) => PrivateEndpointACL.fromMap((value as Map).cast<String, dynamic>())),
      publicNetwork: map['publicNetwork'] == null ? null : NetworkACL.fromMap((map['publicNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

