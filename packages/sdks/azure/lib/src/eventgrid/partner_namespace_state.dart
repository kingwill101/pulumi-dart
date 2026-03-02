// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_namespace_inbound_ip_rule.dart';

/// Input properties used for looking up and filtering PartnerNamespace resources.
class PartnerNamespaceState {
  /// The endpoint for the Event Grid Partner Namespace.
  final pulumi.Input<String>? endpoint;
  /// One or more `inbound_ip_rule` blocks as defined below.
  final pulumi.Input<List<PartnerNamespaceInboundIpRule>>? inboundIpRules;
  /// Whether local authentication methods are enabled for the Event Grid Partner Namespace. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the Azure Region where the Event Grid Partner Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Event Grid Partner Namespace. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String>? name;
  /// The resource Id of the Event Grid Partner Registration that this namespace is associated with. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String>? partnerRegistrationId;
  /// The partner topic routing mode. Possible values are `ChannelNameHeader` and `SourceEventAttribute`. Defaults to `ChannelNameHeader`. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String>? partnerTopicRoutingMode;
  /// Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the Resource Group where the Event Grid Partner Namespace should exist. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Event Grid Partner Namespace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerNamespaceState].
  /// [endpoint] The endpoint for the Event Grid Partner Namespace.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [localAuthenticationEnabled] Whether local authentication methods are enabled for the Event Grid Partner Namespace. Defaults to `true`.
  /// [location] Specifies the Azure Region where the Event Grid Partner Namespace exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Event Grid Partner Namespace. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [partnerRegistrationId] The resource Id of the Event Grid Partner Registration that this namespace is associated with. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [partnerTopicRoutingMode] The partner topic routing mode. Possible values are `ChannelNameHeader` and `SourceEventAttribute`. Defaults to `ChannelNameHeader`. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group where the Event Grid Partner Namespace should exist. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [tags] A mapping of tags which should be assigned to the Event Grid Partner Namespace.
  PartnerNamespaceState({
    this.endpoint,
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
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<PartnerNamespaceInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<PartnerNamespaceInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory PartnerNamespaceState.fromMap(Map<String, dynamic> map) {
    return PartnerNamespaceState(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      inboundIpRules: map['inboundIpRules'] == null ? null : (pulumi.Input.decodeList<PartnerNamespaceInboundIpRule>(map['inboundIpRules'], (value) => PartnerNamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partnerRegistrationId: map['partnerRegistrationId'] == null ? null : (map['partnerRegistrationId'] as String).input(),
      partnerTopicRoutingMode: map['partnerTopicRoutingMode'] == null ? null : (map['partnerTopicRoutingMode'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

