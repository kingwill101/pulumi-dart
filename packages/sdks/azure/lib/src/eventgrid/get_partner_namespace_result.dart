// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partner_namespace_inbound_ip_rule.dart';

/// Result data returned by getPartnerNamespace.
class GetPartnerNamespaceResult {
  /// The endpoint for the Event Grid Partner Namespace.
  final String endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// One or more `inbound_ip_rule` blocks as defined below.
  final List<GetPartnerNamespaceInboundIpRule> inboundIpRules;
  /// Whether local authentication methods are enabled for the Event Grid Partner Namespace.
  final bool localAuthenticationEnabled;
  /// The Azure Region where the Event Grid Partner Namespace exists.
  final String location;
  final String name;
  /// The resource Id of the partner registration associated with this Event Grid Partner Namespace.
  final String partnerRegistrationId;
  /// The partner topic routing mode.
  final String partnerTopicRoutingMode;
  /// Whether or not public network access is allowed for this server.
  final String publicNetworkAccess;
  final String resourceGroupName;
  /// A mapping of tags which are assigned to the Event Grid Partner Namespace.
  final Map<String, String> tags;

  /// Creates a new [GetPartnerNamespaceResult].
  /// [endpoint] The endpoint for the Event Grid Partner Namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [localAuthenticationEnabled] Whether local authentication methods are enabled for the Event Grid Partner Namespace.
  /// [location] The Azure Region where the Event Grid Partner Namespace exists.
  /// [name] Required.
  /// [partnerRegistrationId] The resource Id of the partner registration associated with this Event Grid Partner Namespace.
  /// [partnerTopicRoutingMode] The partner topic routing mode.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags which are assigned to the Event Grid Partner Namespace.
  GetPartnerNamespaceResult({
    required this.endpoint,
    required this.id,
    required this.inboundIpRules,
    required this.localAuthenticationEnabled,
    required this.location,
    required this.name,
    required this.partnerRegistrationId,
    required this.partnerTopicRoutingMode,
    required this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'id': id,
      'inboundIpRules': pulumi.Input.encodeList<GetPartnerNamespaceInboundIpRule, Map<String, dynamic>>(inboundIpRules, (value) => value.toMap()),
      'localAuthenticationEnabled': localAuthenticationEnabled,
      'location': location,
      'name': name,
      'partnerRegistrationId': partnerRegistrationId,
      'partnerTopicRoutingMode': partnerTopicRoutingMode,
      'publicNetworkAccess': publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetPartnerNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerNamespaceResult(
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      inboundIpRules: pulumi.Input.decodeList<GetPartnerNamespaceInboundIpRule>(map['inboundIpRules']!, (value) => GetPartnerNamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>())),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      partnerRegistrationId: map['partnerRegistrationId'] as String,
      partnerTopicRoutingMode: map['partnerTopicRoutingMode'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

