// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_identity.dart';
import 'namespace_inbound_ip_rule.dart';
import 'namespace_topic_spaces_configuration.dart';

/// {@template pulumi_eventgrid_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Specifies the Capacity / Throughput Units for an Eventgrid Namespace. Valid values can be between `1` and `40`.
  final pulumi.Input<int>? capacity;
  /// An `identity` block as defined below.
  final pulumi.Input<NamespaceIdentity>? identity;
  /// One or more `inboundIpRule` blocks as defined below.
  final pulumi.Input<List<NamespaceInboundIpRule>>? inboundIpRules;
  /// Specifies the supported Azure location where the resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Event Grid Namespace resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which the Event Grid Namespace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Defines which tier to use. The only possible value is `Standard`. Defaults to `Standard`.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `topicSpacesConfiguration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<NamespaceTopicSpacesConfiguration>>? topicSpacesConfigurations;

  /// Creates a new [NamespaceArgs].
  /// [capacity] Specifies the Capacity / Throughput Units for an Eventgrid Namespace. Valid values can be between `1` and `40`.
  /// [identity] An `identity` block as defined below.
  /// [inboundIpRules] One or more `inboundIpRule` blocks as defined below.
  /// [location] Specifies the supported Azure location where the resource should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Event Grid Namespace resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which the Event Grid Namespace should exist. Changing this forces a new resource to be created.
  /// [sku] Defines which tier to use. The only possible value is `Standard`. Defaults to `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topicSpacesConfigurations] A `topicSpacesConfiguration` block as defined below. Changing this forces a new resource to be created.
  const NamespaceArgs({
    this.capacity,
    this.identity,
    this.inboundIpRules,
    this.location,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.topicSpacesConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'identity': ?pulumi.Input.mapOptionalInputValue<NamespaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<NamespaceInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<NamespaceInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
      'topicSpacesConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NamespaceTopicSpacesConfiguration>, List<Map<String, dynamic>>>(topicSpacesConfigurations, (value) => pulumi.Input.encodeList<NamespaceTopicSpacesConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamespaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundIpRules: (() { final guardedValue = map['inboundIpRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceInboundIpRule>(guardedValue, (value) => NamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topicSpacesConfigurations: (() { final guardedValue = map['topicSpacesConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceTopicSpacesConfiguration>(guardedValue, (value) => NamespaceTopicSpacesConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
