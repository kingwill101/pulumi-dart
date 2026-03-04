// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition_response.dart';
import 'subnet_response.dart';

/// Service End point policy resource.
class ServiceEndpointPolicyResponse {
  /// A collection of contextual service endpoint policy.
  final pulumi.Input<List<String>>? contextualServiceEndpointPolicies;

  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Kind of service endpoint policy. This is metadata used for the Azure portal experience.
  final pulumi.Input<String> kind;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// Resource name.
  final pulumi.Input<String> name;

  /// The provisioning state of the service endpoint policy resource.
  final pulumi.Input<String> provisioningState;

  /// The resource GUID property of the service endpoint policy resource.
  final pulumi.Input<String> resourceGuid;

  /// The alias indicating if the policy belongs to a service
  final pulumi.Input<String>? serviceAlias;

  /// A collection of service endpoint policy definitions of the service endpoint policy.
  final pulumi.Input<List<ServiceEndpointPolicyDefinitionResponse>>?
  serviceEndpointPolicyDefinitions;

  /// A collection of references to subnets.
  final pulumi.Input<List<SubnetResponse>> subnets;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceEndpointPolicyResponse].
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
  ServiceEndpointPolicyResponse({
    this.contextualServiceEndpointPolicies,
    required this.etag,
    this.id,
    required this.kind,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.serviceAlias,
    this.serviceEndpointPolicyDefinitions,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextualServiceEndpointPolicies': ?contextualServiceEndpointPolicies,
      'etag': etag,
      'id': ?id,
      'kind': kind,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'serviceAlias': ?serviceAlias,
      'serviceEndpointPolicyDefinitions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceEndpointPolicyDefinitionResponse>,
            List<Map<String, dynamic>>
          >(
            serviceEndpointPolicyDefinitions,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceEndpointPolicyDefinitionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'subnets':
          pulumi.Input.mapInputValue<
            List<SubnetResponse>,
            List<Map<String, dynamic>>
          >(
            subnets,
            (value) =>
                pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
      'type': type,
    };
  }

  factory ServiceEndpointPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyResponse(
      contextualServiceEndpointPolicies: (() {
        final guardedValue = map['contextualServiceEndpointPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      serviceAlias: (() {
        final guardedValue = map['serviceAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceEndpointPolicyDefinitions: (() {
        final guardedValue = map['serviceEndpointPolicyDefinitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceEndpointPolicyDefinitionResponse>(
            guardedValue,
            (value) => ServiceEndpointPolicyDefinitionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      subnets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubnetResponse>(
          map['subnets']!,
          (value) =>
              SubnetResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
