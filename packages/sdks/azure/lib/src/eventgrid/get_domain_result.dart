// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_identity.dart';
import 'get_domain_inbound_ip_rule.dart';
import 'get_domain_input_mapping_default_value.dart';
import 'get_domain_input_mapping_field.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// The Endpoint associated with the EventGrid Domain.
  final String endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as documented below.
  final List<GetDomainIdentity> identities;
  /// One or more `inbound_ip_rule` blocks as defined below.
  final List<GetDomainInboundIpRule> inboundIpRules;
  /// A `input_mapping_default_values` block as defined below.
  final List<GetDomainInputMappingDefaultValue> inputMappingDefaultValues;
  /// A `input_mapping_fields` block as defined below.
  final List<GetDomainInputMappingField> inputMappingFields;
  /// The schema in which incoming events will be published to this domain. Possible values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`.
  final String inputSchema;
  /// The Azure Region in which this EventGrid Domain exists.
  final String location;
  final String name;
  /// The primary access key associated with the EventGrid Domain.
  final String primaryAccessKey;
  /// Whether or not public network access is allowed for this server.
  final bool publicNetworkAccessEnabled;
  final String resourceGroupName;
  /// The secondary access key associated with the EventGrid Domain.
  final String secondaryAccessKey;
  /// A mapping of tags assigned to the EventGrid Domain.
  final Map<String, String> tags;

  /// Creates a new [GetDomainResult].
  /// [endpoint] The Endpoint associated with the EventGrid Domain.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as documented below.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [inputMappingDefaultValues] A `input_mapping_default_values` block as defined below.
  /// [inputMappingFields] A `input_mapping_fields` block as defined below.
  /// [inputSchema] The schema in which incoming events will be published to this domain. Possible values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`.
  /// [location] The Azure Region in which this EventGrid Domain exists.
  /// [name] Required.
  /// [primaryAccessKey] The primary access key associated with the EventGrid Domain.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The secondary access key associated with the EventGrid Domain.
  /// [tags] A mapping of tags assigned to the EventGrid Domain.
  GetDomainResult({
    required this.endpoint,
    required this.id,
    required this.identities,
    required this.inboundIpRules,
    required this.inputMappingDefaultValues,
    required this.inputMappingFields,
    required this.inputSchema,
    required this.location,
    required this.name,
    required this.primaryAccessKey,
    required this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'id': id,
      'identities': pulumi.Input.encodeList<GetDomainIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'inboundIpRules': pulumi.Input.encodeList<GetDomainInboundIpRule, Map<String, dynamic>>(inboundIpRules, (value) => value.toMap()),
      'inputMappingDefaultValues': pulumi.Input.encodeList<GetDomainInputMappingDefaultValue, Map<String, dynamic>>(inputMappingDefaultValues, (value) => value.toMap()),
      'inputMappingFields': pulumi.Input.encodeList<GetDomainInputMappingField, Map<String, dynamic>>(inputMappingFields, (value) => value.toMap()),
      'inputSchema': inputSchema,
      'location': location,
      'name': name,
      'primaryAccessKey': primaryAccessKey,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'tags': tags,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetDomainIdentity>(map['identities'], (value) => GetDomainIdentity.fromMap((value as Map).cast<String, dynamic>())),
      inboundIpRules: pulumi.Input.decodeList<GetDomainInboundIpRule>(map['inboundIpRules'], (value) => GetDomainInboundIpRule.fromMap((value as Map).cast<String, dynamic>())),
      inputMappingDefaultValues: pulumi.Input.decodeList<GetDomainInputMappingDefaultValue>(map['inputMappingDefaultValues'], (value) => GetDomainInputMappingDefaultValue.fromMap((value as Map).cast<String, dynamic>())),
      inputMappingFields: pulumi.Input.decodeList<GetDomainInputMappingField>(map['inputMappingFields'], (value) => GetDomainInputMappingField.fromMap((value as Map).cast<String, dynamic>())),
      inputSchema: map['inputSchema'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      primaryAccessKey: map['primaryAccessKey'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

