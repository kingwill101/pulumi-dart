// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_identity.dart';
import 'namespace_inbound_ip_rule.dart';
import 'namespace_topic_spaces_configuration.dart';

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Specifies the Capacity / Throughput Units for an Eventgrid Namespace. Valid values can be between `1` and `40`.
  final pulumi.Input<int>? capacity;
  /// An `identity` block as defined below.
  final pulumi.Input<NamespaceIdentity>? identity;
  /// One or more `inbound_ip_rule` blocks as defined below.
  final pulumi.Input<List<NamespaceInboundIpRule>>? inboundIpRules;
  /// Specifies the supported Azure location where the resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Event Grid Namespace resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which the Event Grid Namespace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Defines which tier to use. The only possible value is `Standard`. Defaults to `Standard`.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `topic_spaces_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<NamespaceTopicSpacesConfiguration>>? topicSpacesConfigurations;

  /// Creates a new [NamespaceState].
  /// [capacity] Specifies the Capacity / Throughput Units for an Eventgrid Namespace. Valid values can be between `1` and `40`.
  /// [identity] An `identity` block as defined below.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [location] Specifies the supported Azure location where the resource should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Event Grid Namespace resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which the Event Grid Namespace should exist. Changing this forces a new resource to be created.
  /// [sku] Defines which tier to use. The only possible value is `Standard`. Defaults to `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topicSpacesConfigurations] A `topic_spaces_configuration` block as defined below. Changing this forces a new resource to be created.
  NamespaceState({
    pulumi.Output<int>? capacity,
    pulumi.Output<NamespaceIdentity>? identity,
    pulumi.Output<List<NamespaceInboundIpRule>>? inboundIpRules,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<NamespaceTopicSpacesConfiguration>>? topicSpacesConfigurations,
  }) :
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      identity = pulumi.Input.asOptionalInput<NamespaceIdentity>(identity),
      inboundIpRules = pulumi.Input.asOptionalInput<List<NamespaceInboundIpRule>>(inboundIpRules),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicSpacesConfigurations = pulumi.Input.asOptionalInput<List<NamespaceTopicSpacesConfiguration>>(topicSpacesConfigurations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'identity': ?pulumi.Input.mapOptionalInputValue<NamespaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<NamespaceInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<NamespaceInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
      'topicSpacesConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NamespaceTopicSpacesConfiguration>, List<Map<String, dynamic>>>(topicSpacesConfigurations, (value) => pulumi.Input.encodeList<NamespaceTopicSpacesConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      identity: map['identity'] == null ? null : pulumi.Output.create<NamespaceIdentity>(NamespaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Output.create<List<NamespaceInboundIpRule>>(pulumi.Input.decodeList<NamespaceInboundIpRule>(map['inboundIpRules'], (value) => NamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topicSpacesConfigurations: map['topicSpacesConfigurations'] == null ? null : pulumi.Output.create<List<NamespaceTopicSpacesConfiguration>>(pulumi.Input.decodeList<NamespaceTopicSpacesConfiguration>(map['topicSpacesConfigurations'], (value) => NamespaceTopicSpacesConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

