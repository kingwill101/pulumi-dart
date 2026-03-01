// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_identity.dart';
import 'topic_inbound_ip_rule.dart';
import 'topic_input_mapping_default_values.dart';
import 'topic_input_mapping_fields.dart';

/// {@template pulumi_eventgrid_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_topic_topic_args_doc}
class TopicArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<TopicIdentity>? identity;
  /// One or more `inbound_ip_rule` blocks as defined below.
  final pulumi.Input<List<TopicInboundIpRule>>? inboundIpRules;
  /// A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<TopicInputMappingDefaultValues>? inputMappingDefaultValues;
  /// A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<TopicInputMappingFields>? inputMappingFields;
  /// Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? inputSchema;
  /// Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TopicArgs].
  /// [identity] An `identity` block as defined below.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [inputMappingDefaultValues] A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  /// [inputMappingFields] A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  /// [inputSchema] Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  TopicArgs({
    pulumi.Output<TopicIdentity>? identity,
    pulumi.Output<List<TopicInboundIpRule>>? inboundIpRules,
    pulumi.Output<TopicInputMappingDefaultValues>? inputMappingDefaultValues,
    pulumi.Output<TopicInputMappingFields>? inputMappingFields,
    pulumi.Output<String>? inputSchema,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<TopicIdentity>(identity),
      inboundIpRules = pulumi.Input.asOptionalInput<List<TopicInboundIpRule>>(inboundIpRules),
      inputMappingDefaultValues = pulumi.Input.asOptionalInput<TopicInputMappingDefaultValues>(inputMappingDefaultValues),
      inputMappingFields = pulumi.Input.asOptionalInput<TopicInputMappingFields>(inputMappingFields),
      inputSchema = pulumi.Input.asOptionalInput<String>(inputSchema),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<TopicIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<TopicInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<TopicInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputMappingDefaultValues': ?pulumi.Input.mapOptionalInputValue<TopicInputMappingDefaultValues, Map<String, dynamic>>(inputMappingDefaultValues, (value) => value.toMap()),
      'inputMappingFields': ?pulumi.Input.mapOptionalInputValue<TopicInputMappingFields, Map<String, dynamic>>(inputMappingFields, (value) => value.toMap()),
      'inputSchema': ?inputSchema,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<TopicIdentity>(TopicIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Output.create<List<TopicInboundIpRule>>(pulumi.Input.decodeList<TopicInboundIpRule>(map['inboundIpRules'], (value) => TopicInboundIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      inputMappingDefaultValues: map['inputMappingDefaultValues'] == null ? null : pulumi.Output.create<TopicInputMappingDefaultValues>(TopicInputMappingDefaultValues.fromMap((map['inputMappingDefaultValues'] as Map).cast<String, dynamic>())),
      inputMappingFields: map['inputMappingFields'] == null ? null : pulumi.Output.create<TopicInputMappingFields>(TopicInputMappingFields.fromMap((map['inputMappingFields'] as Map).cast<String, dynamic>())),
      inputSchema: map['inputSchema'] == null ? null : pulumi.Output.create<String>(map['inputSchema'] as String),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

