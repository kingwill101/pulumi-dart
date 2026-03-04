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
  final pulumi.Input<DomainInputMappingDefaultValues>?
  inputMappingDefaultValues;

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
      'autoCreateTopicWithFirstSubscription':
          ?autoCreateTopicWithFirstSubscription,
      'autoDeleteTopicWithLastSubscription':
          ?autoDeleteTopicWithLastSubscription,
      'endpoint': ?endpoint,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            DomainIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'inboundIpRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainInboundIpRule>,
            List<Map<String, dynamic>>
          >(
            inboundIpRules,
            (value) =>
                pulumi.Input.encodeList<
                  DomainInboundIpRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inputMappingDefaultValues':
          ?pulumi.Input.mapOptionalInputValue<
            DomainInputMappingDefaultValues,
            Map<String, dynamic>
          >(inputMappingDefaultValues, (value) => value.toMap()),
      'inputMappingFields':
          ?pulumi.Input.mapOptionalInputValue<
            DomainInputMappingFields,
            Map<String, dynamic>
          >(inputMappingFields, (value) => value.toMap()),
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
      autoCreateTopicWithFirstSubscription: (() {
        final guardedValue = map['autoCreateTopicWithFirstSubscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoDeleteTopicWithLastSubscription: (() {
        final guardedValue = map['autoDeleteTopicWithLastSubscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      inboundIpRules: (() {
        final guardedValue = map['inboundIpRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainInboundIpRule>(
            guardedValue,
            (value) => DomainInboundIpRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      inputMappingDefaultValues: (() {
        final guardedValue = map['inputMappingDefaultValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainInputMappingDefaultValues.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inputMappingFields: (() {
        final guardedValue = map['inputMappingFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainInputMappingFields.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inputSchema: (() {
        final guardedValue = map['inputSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localAuthEnabled: (() {
        final guardedValue = map['localAuthEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryAccessKey: (() {
        final guardedValue = map['primaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryAccessKey: (() {
        final guardedValue = map['secondaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
