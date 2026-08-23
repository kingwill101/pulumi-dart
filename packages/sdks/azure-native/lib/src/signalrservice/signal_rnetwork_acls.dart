// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';
import 'network_acl.dart';
import 'private_endpoint_acl.dart';

/// Network ACLs for the resource
class SignalRNetworkACLs {
  /// Azure Networking ACL Action.
  final pulumi.Input<String>? defaultAction;
  /// IP rules for filtering public traffic
  final pulumi.Input<List<IPRule>>? ipRules;
  /// ACLs for requests from private endpoints
  final pulumi.Input<List<PrivateEndpointACL>>? privateEndpoints;
  /// Network ACL
  final pulumi.Input<NetworkACL>? publicNetwork;

  /// Creates a new [SignalRNetworkACLs].
  /// [defaultAction] Azure Networking ACL Action.
  /// [ipRules] IP rules for filtering public traffic
  /// [privateEndpoints] ACLs for requests from private endpoints
  /// [publicNetwork] Network ACL
  const SignalRNetworkACLs({
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

  factory SignalRNetworkACLs.fromMap(Map<String, dynamic> map) {
    return SignalRNetworkACLs(
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRule>(guardedValue, (value) => IPRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateEndpoints: (() { final guardedValue = map['privateEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointACL>(guardedValue, (value) => PrivateEndpointACL.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetwork: (() { final guardedValue = map['publicNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkACL.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
