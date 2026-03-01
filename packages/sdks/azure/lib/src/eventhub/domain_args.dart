// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_identity.dart';
import 'domain_inbound_ip_rule.dart';
import 'domain_input_mapping_default_values.dart';
import 'domain_input_mapping_fields.dart';

/// {@template pulumi_eventhub_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_eventhub_domain_domain_args_doc}
class DomainArgs {
  /// Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to `true`.
  final pulumi.Input<bool>? autoCreateTopicWithFirstSubscription;
  /// Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to `true`.
  final pulumi.Input<bool>? autoDeleteTopicWithLastSubscription;
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
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainArgs].
  /// [autoCreateTopicWithFirstSubscription] Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to `true`.
  /// [autoDeleteTopicWithLastSubscription] Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [inputMappingDefaultValues] A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  /// [inputMappingFields] A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  /// [inputSchema] Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled for the EventGrid Domain. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventGrid Domain resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  DomainArgs({
    pulumi.Output<bool>? autoCreateTopicWithFirstSubscription,
    pulumi.Output<bool>? autoDeleteTopicWithLastSubscription,
    pulumi.Output<DomainIdentity>? identity,
    pulumi.Output<List<DomainInboundIpRule>>? inboundIpRules,
    pulumi.Output<DomainInputMappingDefaultValues>? inputMappingDefaultValues,
    pulumi.Output<DomainInputMappingFields>? inputMappingFields,
    pulumi.Output<String>? inputSchema,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      autoCreateTopicWithFirstSubscription = pulumi.Input.asOptionalInput<bool>(autoCreateTopicWithFirstSubscription),
      autoDeleteTopicWithLastSubscription = pulumi.Input.asOptionalInput<bool>(autoDeleteTopicWithLastSubscription),
      identity = pulumi.Input.asOptionalInput<DomainIdentity>(identity),
      inboundIpRules = pulumi.Input.asOptionalInput<List<DomainInboundIpRule>>(inboundIpRules),
      inputMappingDefaultValues = pulumi.Input.asOptionalInput<DomainInputMappingDefaultValues>(inputMappingDefaultValues),
      inputMappingFields = pulumi.Input.asOptionalInput<DomainInputMappingFields>(inputMappingFields),
      inputSchema = pulumi.Input.asOptionalInput<String>(inputSchema),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateTopicWithFirstSubscription': ?autoCreateTopicWithFirstSubscription,
      'autoDeleteTopicWithLastSubscription': ?autoDeleteTopicWithLastSubscription,
      'identity': ?pulumi.Input.mapOptionalInputValue<DomainIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<DomainInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<DomainInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputMappingDefaultValues': ?pulumi.Input.mapOptionalInputValue<DomainInputMappingDefaultValues, Map<String, dynamic>>(inputMappingDefaultValues, (value) => value.toMap()),
      'inputMappingFields': ?pulumi.Input.mapOptionalInputValue<DomainInputMappingFields, Map<String, dynamic>>(inputMappingFields, (value) => value.toMap()),
      'inputSchema': ?inputSchema,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      autoCreateTopicWithFirstSubscription: map['autoCreateTopicWithFirstSubscription'] == null ? null : pulumi.Output.create<bool>(map['autoCreateTopicWithFirstSubscription'] as bool),
      autoDeleteTopicWithLastSubscription: map['autoDeleteTopicWithLastSubscription'] == null ? null : pulumi.Output.create<bool>(map['autoDeleteTopicWithLastSubscription'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<DomainIdentity>(DomainIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Output.create<List<DomainInboundIpRule>>(pulumi.Input.decodeList<DomainInboundIpRule>(map['inboundIpRules'], (value) => DomainInboundIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      inputMappingDefaultValues: map['inputMappingDefaultValues'] == null ? null : pulumi.Output.create<DomainInputMappingDefaultValues>(DomainInputMappingDefaultValues.fromMap((map['inputMappingDefaultValues'] as Map).cast<String, dynamic>())),
      inputMappingFields: map['inputMappingFields'] == null ? null : pulumi.Output.create<DomainInputMappingFields>(DomainInputMappingFields.fromMap((map['inputMappingFields'] as Map).cast<String, dynamic>())),
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

