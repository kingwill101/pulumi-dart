// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition_response.dart';
import 'subnet_response.dart';

/// Result data returned by getServiceEndpointPolicy.
class GetServiceEndpointPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A collection of contextual service endpoint policy.
  final List<String>? contextualServiceEndpointPolicies;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Kind of service endpoint policy. This is metadata used for the Azure portal experience.
  final String? kind;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the service endpoint policy resource.
  final String? provisioningState;
  /// The resource GUID property of the service endpoint policy resource.
  final String? resourceGuid;
  /// The alias indicating if the policy belongs to a service
  final String? serviceAlias;
  /// A collection of service endpoint policy definitions of the service endpoint policy.
  final List<ServiceEndpointPolicyDefinitionResponse>? serviceEndpointPolicyDefinitions;
  /// A collection of references to subnets.
  final List<SubnetResponse>? subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetServiceEndpointPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contextualServiceEndpointPolicies] A collection of contextual service endpoint policy.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [kind] Kind of service endpoint policy. This is metadata used for the Azure portal experience.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the service endpoint policy resource.
  /// [resourceGuid] The resource GUID property of the service endpoint policy resource.
  /// [serviceAlias] The alias indicating if the policy belongs to a service
  /// [serviceEndpointPolicyDefinitions] A collection of service endpoint policy definitions of the service endpoint policy.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetServiceEndpointPolicyResult({
    this.azureApiVersion,
    this.contextualServiceEndpointPolicies,
    this.etag,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.serviceAlias,
    this.serviceEndpointPolicyDefinitions,
    this.subnets,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'contextualServiceEndpointPolicies': ?contextualServiceEndpointPolicies,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'serviceAlias': ?serviceAlias,
      'serviceEndpointPolicyDefinitions': ?(() { final guardedValue = serviceEndpointPolicyDefinitions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServiceEndpointPolicyDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnets': ?(() { final guardedValue = subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetServiceEndpointPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contextualServiceEndpointPolicies: (() { final guardedValue = map['contextualServiceEndpointPolicies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAlias: (() { final guardedValue = map['serviceAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceEndpointPolicyDefinitions: (() { final guardedValue = map['serviceEndpointPolicyDefinitions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceEndpointPolicyDefinitionResponse>(guardedValue, (value) => ServiceEndpointPolicyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetResponse>(guardedValue, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
