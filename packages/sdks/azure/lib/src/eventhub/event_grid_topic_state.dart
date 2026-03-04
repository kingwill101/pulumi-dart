// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_topic_identity.dart';
import 'event_grid_topic_inbound_ip_rule.dart';
import 'event_grid_topic_input_mapping_default_values.dart';
import 'event_grid_topic_input_mapping_fields.dart';

/// Input properties used for looking up and filtering EventGridTopic resources.
class EventGridTopicState {
  /// The Endpoint associated with the EventGrid Topic.
  final pulumi.Input<String>? endpoint;

  /// An `identity` block as defined below.
  final pulumi.Input<EventGridTopicIdentity>? identity;

  /// One or more `inbound_ip_rule` blocks as defined below.
  final pulumi.Input<List<EventGridTopicInboundIpRule>>? inboundIpRules;

  /// A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EventGridTopicInputMappingDefaultValues>?
  inputMappingDefaultValues;

  /// A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EventGridTopicInputMappingFields>? inputMappingFields;

  /// Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? inputSchema;

  /// Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The Primary Shared Access Key associated with the EventGrid Topic.
  final pulumi.Input<String>? primaryAccessKey;

  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The Secondary Shared Access Key associated with the EventGrid Topic.
  final pulumi.Input<String>? secondaryAccessKey;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EventGridTopicState].
  /// [endpoint] The Endpoint associated with the EventGrid Topic.
  /// [identity] An `identity` block as defined below.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [inputMappingDefaultValues] A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  /// [inputMappingFields] A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  /// [inputSchema] Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created.
  /// [primaryAccessKey] The Primary Shared Access Key associated with the EventGrid Topic.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The Secondary Shared Access Key associated with the EventGrid Topic.
  /// [tags] A mapping of tags to assign to the resource.
  EventGridTopicState({
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
      'endpoint': ?endpoint,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            EventGridTopicIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'inboundIpRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventGridTopicInboundIpRule>,
            List<Map<String, dynamic>>
          >(
            inboundIpRules,
            (value) =>
                pulumi.Input.encodeList<
                  EventGridTopicInboundIpRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inputMappingDefaultValues':
          ?pulumi.Input.mapOptionalInputValue<
            EventGridTopicInputMappingDefaultValues,
            Map<String, dynamic>
          >(inputMappingDefaultValues, (value) => value.toMap()),
      'inputMappingFields':
          ?pulumi.Input.mapOptionalInputValue<
            EventGridTopicInputMappingFields,
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

  factory EventGridTopicState.fromMap(Map<String, dynamic> map) {
    return EventGridTopicState(
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventGridTopicIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inboundIpRules: (() {
        final guardedValue = map['inboundIpRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventGridTopicInboundIpRule>(
            guardedValue,
            (value) => EventGridTopicInboundIpRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      inputMappingDefaultValues: (() {
        final guardedValue = map['inputMappingDefaultValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventGridTopicInputMappingDefaultValues.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inputMappingFields: (() {
        final guardedValue = map['inputMappingFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventGridTopicInputMappingFields.fromMap(
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
