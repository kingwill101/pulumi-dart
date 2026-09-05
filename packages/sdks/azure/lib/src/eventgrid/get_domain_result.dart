// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_identity.dart';
import 'get_domain_inbound_ip_rule.dart';
import 'get_domain_input_mapping_default_value.dart';
import 'get_domain_input_mapping_field.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// The Endpoint associated with the EventGrid Domain.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as documented below.
  final List<GetDomainIdentity>? identities;
  /// One or more `inboundIpRule` blocks as defined below.
  final List<GetDomainInboundIpRule>? inboundIpRules;
  /// A `inputMappingDefaultValues` block as defined below.
  final List<GetDomainInputMappingDefaultValue>? inputMappingDefaultValues;
  /// A `inputMappingFields` block as defined below.
  final List<GetDomainInputMappingField>? inputMappingFields;
  /// The schema in which incoming events will be published to this domain. Possible values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`.
  final String? inputSchema;
  /// The Azure Region in which this EventGrid Domain exists.
  final String? location;
  final String? name;
  /// The primary access key associated with the EventGrid Domain.
  final String? primaryAccessKey;
  /// Whether or not public network access is allowed for this server.
  final bool? publicNetworkAccessEnabled;
  final String? resourceGroupName;
  /// The secondary access key associated with the EventGrid Domain.
  final String? secondaryAccessKey;
  /// A mapping of tags assigned to the EventGrid Domain.
  final Map<String, String>? tags;

  /// Creates a new [GetDomainResult].
  /// [endpoint] The Endpoint associated with the EventGrid Domain.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as documented below.
  /// [inboundIpRules] One or more `inboundIpRule` blocks as defined below.
  /// [inputMappingDefaultValues] A `inputMappingDefaultValues` block as defined below.
  /// [inputMappingFields] A `inputMappingFields` block as defined below.
  /// [inputSchema] The schema in which incoming events will be published to this domain. Possible values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`.
  /// [location] The Azure Region in which this EventGrid Domain exists.
  /// [name] Optional.
  /// [primaryAccessKey] The primary access key associated with the EventGrid Domain.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The secondary access key associated with the EventGrid Domain.
  /// [tags] A mapping of tags assigned to the EventGrid Domain.
  const GetDomainResult({
    this.endpoint,
    this.id,
    this.identities,
    this.inboundIpRules,
    this.inputMappingDefaultValues,
    this.inputMappingFields,
    this.inputSchema,
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
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inboundIpRules': ?(() { final guardedValue = inboundIpRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainInboundIpRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inputMappingDefaultValues': ?(() { final guardedValue = inputMappingDefaultValues; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainInputMappingDefaultValue, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inputMappingFields': ?(() { final guardedValue = inputMappingFields; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainInputMappingField, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inputSchema': ?inputSchema,
      'location': ?location,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'tags': ?tags,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainIdentity>(guardedValue, (value) => GetDomainIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      inboundIpRules: (() { final guardedValue = map['inboundIpRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainInboundIpRule>(guardedValue, (value) => GetDomainInboundIpRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      inputMappingDefaultValues: (() { final guardedValue = map['inputMappingDefaultValues']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainInputMappingDefaultValue>(guardedValue, (value) => GetDomainInputMappingDefaultValue.fromMap((value as Map).cast<String, dynamic>())); })(),
      inputMappingFields: (() { final guardedValue = map['inputMappingFields']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainInputMappingField>(guardedValue, (value) => GetDomainInputMappingField.fromMap((value as Map).cast<String, dynamic>())); })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
