// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_namespace_inbound_ip_rule.dart';

/// {@template pulumi_eventgrid_partner_namespace_partner_namespace_args_doc}
/// The set of arguments for PartnerNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_namespace_partner_namespace_args_doc}
class PartnerNamespaceArgs {
  /// One or more `inbound_ip_rule` blocks as defined below.
  final pulumi.Input<List<PartnerNamespaceInboundIpRule>>? inboundIpRules;
  /// Whether local authentication methods are enabled for the Event Grid Partner Namespace. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the Azure Region where the Event Grid Partner Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Event Grid Partner Namespace. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String>? name;
  /// The resource Id of the Event Grid Partner Registration that this namespace is associated with. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String> partnerRegistrationId;
  /// The partner topic routing mode. Possible values are `ChannelNameHeader` and `SourceEventAttribute`. Defaults to `ChannelNameHeader`. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String>? partnerTopicRoutingMode;
  /// Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the Resource Group where the Event Grid Partner Namespace should exist. Changing this forces a new Event Grid Partner Namespace to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Event Grid Partner Namespace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerNamespaceArgs].
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [localAuthenticationEnabled] Whether local authentication methods are enabled for the Event Grid Partner Namespace. Defaults to `true`.
  /// [location] Specifies the Azure Region where the Event Grid Partner Namespace exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Event Grid Partner Namespace. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [partnerRegistrationId] The resource Id of the Event Grid Partner Registration that this namespace is associated with. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [partnerTopicRoutingMode] The partner topic routing mode. Possible values are `ChannelNameHeader` and `SourceEventAttribute`. Defaults to `ChannelNameHeader`. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group where the Event Grid Partner Namespace should exist. Changing this forces a new Event Grid Partner Namespace to be created.
  /// [tags] A mapping of tags which should be assigned to the Event Grid Partner Namespace.
  PartnerNamespaceArgs({
    pulumi.Output<List<PartnerNamespaceInboundIpRule>>? inboundIpRules,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> partnerRegistrationId,
    pulumi.Output<String>? partnerTopicRoutingMode,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      inboundIpRules = pulumi.Input.asOptionalInput<List<PartnerNamespaceInboundIpRule>>(inboundIpRules),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      partnerRegistrationId = pulumi.Input.asInput<String>(partnerRegistrationId),
      partnerTopicRoutingMode = pulumi.Input.asOptionalInput<String>(partnerTopicRoutingMode),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<PartnerNamespaceInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<PartnerNamespaceInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'partnerRegistrationId': partnerRegistrationId,
      'partnerTopicRoutingMode': ?partnerTopicRoutingMode,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return PartnerNamespaceArgs(
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Output.create<List<PartnerNamespaceInboundIpRule>>(pulumi.Input.decodeList<PartnerNamespaceInboundIpRule>(map['inboundIpRules'], (value) => PartnerNamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partnerRegistrationId: pulumi.Output.create<String>(map['partnerRegistrationId'] as String),
      partnerTopicRoutingMode: map['partnerTopicRoutingMode'] == null ? null : pulumi.Output.create<String>(map['partnerTopicRoutingMode'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

