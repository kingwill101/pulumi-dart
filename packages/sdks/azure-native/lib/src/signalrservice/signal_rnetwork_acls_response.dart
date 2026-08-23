// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';
import 'network_aclresponse.dart';
import 'private_endpoint_aclresponse.dart';

/// Network ACLs for the resource
class SignalRNetworkACLsResponse {
  /// Azure Networking ACL Action.
  final pulumi.Input<String>? defaultAction;
  /// IP rules for filtering public traffic
  final pulumi.Input<List<IPRuleResponse>>? ipRules;
  /// ACLs for requests from private endpoints
  final pulumi.Input<List<PrivateEndpointACLResponse>>? privateEndpoints;
  /// Network ACL
  final pulumi.Input<NetworkACLResponse>? publicNetwork;

  /// Creates a new [SignalRNetworkACLsResponse].
  /// [defaultAction] Azure Networking ACL Action.
  /// [ipRules] IP rules for filtering public traffic
  /// [privateEndpoints] ACLs for requests from private endpoints
  /// [publicNetwork] Network ACL
  const SignalRNetworkACLsResponse({
    this.defaultAction,
    this.ipRules,
    this.privateEndpoints,
    this.publicNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpoints': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointACLResponse>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<PrivateEndpointACLResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetwork': ?pulumi.Input.mapOptionalInputValue<NetworkACLResponse, Map<String, dynamic>>(publicNetwork, (value) => value.toMap()),
    };
  }

  factory SignalRNetworkACLsResponse.fromMap(Map<String, dynamic> map) {
    return SignalRNetworkACLsResponse(
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRuleResponse>(guardedValue, (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateEndpoints: (() { final guardedValue = map['privateEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointACLResponse>(guardedValue, (value) => PrivateEndpointACLResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetwork: (() { final guardedValue = map['publicNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkACLResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
