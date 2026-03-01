// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition.dart';

/// Service End point policy resource.
class ServiceEndpointPolicy {
  /// A collection of contextual service endpoint policy.
  final List<String>? contextualServiceEndpointPolicies;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// The alias indicating if the policy belongs to a service
  final String? serviceAlias;
  /// A collection of service endpoint policy definitions of the service endpoint policy.
  final List<ServiceEndpointPolicyDefinition>? serviceEndpointPolicyDefinitions;
  /// Resource tags.
  final Map<String, String>? tags;

  /// Creates a new [ServiceEndpointPolicy].
  /// [contextualServiceEndpointPolicies] A collection of contextual service endpoint policy.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [serviceAlias] The alias indicating if the policy belongs to a service
  /// [serviceEndpointPolicyDefinitions] A collection of service endpoint policy definitions of the service endpoint policy.
  /// [tags] Resource tags.
  ServiceEndpointPolicy({
    this.contextualServiceEndpointPolicies,
    this.etag,
    this.id,
    this.location,
    this.serviceAlias,
    this.serviceEndpointPolicyDefinitions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextualServiceEndpointPolicies': ?contextualServiceEndpointPolicies,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'serviceAlias': ?serviceAlias,
      'serviceEndpointPolicyDefinitions': ?serviceEndpointPolicyDefinitions == null ? null : pulumi.Input.encodeList<ServiceEndpointPolicyDefinition, Map<String, dynamic>>(serviceEndpointPolicyDefinitions!, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ServiceEndpointPolicy.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicy(
      contextualServiceEndpointPolicies: map['contextualServiceEndpointPolicies'] == null ? null : (map['contextualServiceEndpointPolicies'] as List).cast<String>(),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      serviceAlias: map['serviceAlias'] == null ? null : map['serviceAlias'] as String,
      serviceEndpointPolicyDefinitions: map['serviceEndpointPolicyDefinitions'] == null ? null : pulumi.Input.decodeList<ServiceEndpointPolicyDefinition>(map['serviceEndpointPolicyDefinitions'], (value) => ServiceEndpointPolicyDefinition.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

