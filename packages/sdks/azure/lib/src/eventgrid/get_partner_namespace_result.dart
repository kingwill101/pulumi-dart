// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partner_namespace_inbound_ip_rule.dart';

/// Result data returned by getPartnerNamespace.
class GetPartnerNamespaceResult {
  /// The endpoint for the Event Grid Partner Namespace.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// One or more `inboundIpRule` blocks as defined below.
  final List<GetPartnerNamespaceInboundIpRule>? inboundIpRules;
  /// Whether local authentication methods are enabled for the Event Grid Partner Namespace.
  final bool? localAuthenticationEnabled;
  /// The Azure Region where the Event Grid Partner Namespace exists.
  final String? location;
  final String? name;
  /// The resource Id of the partner registration associated with this Event Grid Partner Namespace.
  final String? partnerRegistrationId;
  /// The partner topic routing mode.
  final String? partnerTopicRoutingMode;
  /// Whether or not public network access is allowed for this server.
  final String? publicNetworkAccess;
  final String? resourceGroupName;
  /// A mapping of tags which are assigned to the Event Grid Partner Namespace.
  final Map<String, String>? tags;

  /// Creates a new [GetPartnerNamespaceResult].
  /// [endpoint] The endpoint for the Event Grid Partner Namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inboundIpRules] One or more `inboundIpRule` blocks as defined below.
  /// [localAuthenticationEnabled] Whether local authentication methods are enabled for the Event Grid Partner Namespace.
  /// [location] The Azure Region where the Event Grid Partner Namespace exists.
  /// [name] Optional.
  /// [partnerRegistrationId] The resource Id of the partner registration associated with this Event Grid Partner Namespace.
  /// [partnerTopicRoutingMode] The partner topic routing mode.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags which are assigned to the Event Grid Partner Namespace.
  const GetPartnerNamespaceResult({
    this.endpoint,
    this.id,
    this.inboundIpRules,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.partnerRegistrationId,
    this.partnerTopicRoutingMode,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'id': ?id,
      'inboundIpRules': ?(() { final guardedValue = inboundIpRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPartnerNamespaceInboundIpRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'partnerRegistrationId': ?partnerRegistrationId,
      'partnerTopicRoutingMode': ?partnerTopicRoutingMode,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetPartnerNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerNamespaceResult(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inboundIpRules: (() { final guardedValue = map['inboundIpRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPartnerNamespaceInboundIpRule>(guardedValue, (value) => GetPartnerNamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerRegistrationId: (() { final guardedValue = map['partnerRegistrationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerTopicRoutingMode: (() { final guardedValue = map['partnerTopicRoutingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
