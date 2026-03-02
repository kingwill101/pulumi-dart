// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_identity.dart';
import 'domain_inbound_ip_rule.dart';
import 'domain_input_mapping_default_values.dart';
import 'domain_input_mapping_fields.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to `true`.
  final pulumi.Input<bool>? autoCreateTopicWithFirstSubscription;
  /// Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to `true`.
  final pulumi.Input<bool>? autoDeleteTopicWithLastSubscription;
  /// The Endpoint associated with the EventGrid Domain.
  final pulumi.Input<String>? endpoint;
  /// An `identity` block as defined below.
  final pulumi.Input<DomainIdentity>? identity;
  /// One or more `inbound_ip_rule` blocks as defined below.
  final pulumi.Input<List<DomainInboundIpRule>>? inboundIpRules;
  /// A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DomainInputMappingDefaultValues>? inputMappingDefaultValues;
  /// A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DomainInputMappingFields>? inputMappingFields;
  /// Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? inputSchema;
  /// Whether local authentication methods is enabled for the EventGrid Domain. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the EventGrid Domain resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Primary Shared Access Key associated with the EventGrid Domain.
  final pulumi.Input<String>? primaryAccessKey;
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Secondary Shared Access Key associated with the EventGrid Domain.
  final pulumi.Input<String>? secondaryAccessKey;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainState].
  /// [autoCreateTopicWithFirstSubscription] Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to `true`.
  /// [autoDeleteTopicWithLastSubscription] Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to `true`.
  /// [endpoint] The Endpoint associated with the EventGrid Domain.
  /// [identity] An `identity` block as defined below.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [inputMappingDefaultValues] A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  /// [inputMappingFields] A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  /// [inputSchema] Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled for the EventGrid Domain. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventGrid Domain resource. Changing this forces a new resource to be created.
  /// [primaryAccessKey] The Primary Shared Access Key associated with the EventGrid Domain.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The Secondary Shared Access Key associated with the EventGrid Domain.
  /// [tags] A mapping of tags to assign to the resource.
  DomainState({
    this.autoCreateTopicWithFirstSubscription,
    this.autoDeleteTopicWithLastSubscription,
    this.endpoint,
    this.identity,
    this.inboundIpRules,
    this.inputMappingDefaultValues,
    this.inputMappingFields,
    this.inputSchema,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.primaryAccessKey,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateTopicWithFirstSubscription': ?autoCreateTopicWithFirstSubscription,
      'autoDeleteTopicWithLastSubscription': ?autoDeleteTopicWithLastSubscription,
      'endpoint': ?endpoint,
      'identity': ?pulumi.Input.mapOptionalInputValue<DomainIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<DomainInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<DomainInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputMappingDefaultValues': ?pulumi.Input.mapOptionalInputValue<DomainInputMappingDefaultValues, Map<String, dynamic>>(inputMappingDefaultValues, (value) => value.toMap()),
      'inputMappingFields': ?pulumi.Input.mapOptionalInputValue<DomainInputMappingFields, Map<String, dynamic>>(inputMappingFields, (value) => value.toMap()),
      'inputSchema': ?inputSchema,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'tags': ?tags,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      autoCreateTopicWithFirstSubscription: map['autoCreateTopicWithFirstSubscription'] == null ? null : (map['autoCreateTopicWithFirstSubscription'] as bool).input(),
      autoDeleteTopicWithLastSubscription: map['autoDeleteTopicWithLastSubscription'] == null ? null : (map['autoDeleteTopicWithLastSubscription'] as bool).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      identity: map['identity'] == null ? null : (DomainIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      inboundIpRules: map['inboundIpRules'] == null ? null : (pulumi.Input.decodeList<DomainInboundIpRule>(map['inboundIpRules'], (value) => DomainInboundIpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputMappingDefaultValues: map['inputMappingDefaultValues'] == null ? null : (DomainInputMappingDefaultValues.fromMap((map['inputMappingDefaultValues'] as Map).cast<String, dynamic>())).input(),
      inputMappingFields: map['inputMappingFields'] == null ? null : (DomainInputMappingFields.fromMap((map['inputMappingFields'] as Map).cast<String, dynamic>())).input(),
      inputSchema: map['inputSchema'] == null ? null : (map['inputSchema'] as String).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey'] as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

