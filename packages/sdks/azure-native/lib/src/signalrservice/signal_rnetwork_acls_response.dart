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
  SignalRNetworkACLsResponse({
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
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction'] as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IPRuleResponse>(map['ipRules'], (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateEndpoints: map['privateEndpoints'] == null ? null : (pulumi.Input.decodeList<PrivateEndpointACLResponse>(map['privateEndpoints'], (value) => PrivateEndpointACLResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetwork: map['publicNetwork'] == null ? null : (NetworkACLResponse.fromMap((map['publicNetwork'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

