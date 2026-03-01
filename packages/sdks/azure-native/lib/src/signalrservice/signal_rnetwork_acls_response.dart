// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';
import 'network_aclresponse.dart';
import 'private_endpoint_aclresponse.dart';

/// Network ACLs for the resource
class SignalRNetworkACLsResponse {
  /// Azure Networking ACL Action.
  final String? defaultAction;
  /// IP rules for filtering public traffic
  final List<IPRuleResponse>? ipRules;
  /// ACLs for requests from private endpoints
  final List<PrivateEndpointACLResponse>? privateEndpoints;
  /// Network ACL
  final NetworkACLResponse? publicNetwork;

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
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'privateEndpoints': ?privateEndpoints == null ? null : pulumi.Input.encodeList<PrivateEndpointACLResponse, Map<String, dynamic>>(privateEndpoints!, (value) => value.toMap()),
      'publicNetwork': ?publicNetwork == null ? null : publicNetwork!.toMap(),
    };
  }

  factory SignalRNetworkACLsResponse.fromMap(Map<String, dynamic> map) {
    return SignalRNetworkACLsResponse(
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRuleResponse>(map['ipRules'], (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateEndpoints: map['privateEndpoints'] == null ? null : pulumi.Input.decodeList<PrivateEndpointACLResponse>(map['privateEndpoints'], (value) => PrivateEndpointACLResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetwork: map['publicNetwork'] == null ? null : NetworkACLResponse.fromMap((map['publicNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

