// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_policy_response.dart';

/// Result data returned by getRoutingIntent.
class GetRoutingIntentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the RoutingIntent resource.
  final String provisioningState;
  /// List of routing policies.
  final List<RoutingPolicyResponse>? routingPolicies;
  /// Resource type.
  final String type;

  /// Creates a new [GetRoutingIntentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the RoutingIntent resource.
  /// [routingPolicies] List of routing policies.
  /// [type] Resource type.
  GetRoutingIntentResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.routingPolicies,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'routingPolicies': ?routingPolicies == null ? null : pulumi.Input.encodeList<RoutingPolicyResponse, Map<String, dynamic>>(routingPolicies!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetRoutingIntentResult.fromMap(Map<String, dynamic> map) {
    return GetRoutingIntentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      provisioningState: map['provisioningState'] as String,
      routingPolicies: map['routingPolicies'] == null ? null : pulumi.Input.decodeList<RoutingPolicyResponse>(map['routingPolicies']!, (value) => RoutingPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

