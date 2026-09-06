// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition_interface_endpoint_response.dart';
import 'subnet_response.dart';

/// Service End point policy resource.
class ServiceEndpointPolicyInterfaceEndpointResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The provisioning state of the service endpoint policy. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String> provisioningState;
  /// The resource GUID property of the service endpoint policy resource.
  final pulumi.Input<String> resourceGuid;
  /// A collection of service endpoint policy definitions of the service endpoint policy.
  final pulumi.Input<List<ServiceEndpointPolicyDefinitionInterfaceEndpointResponse>?>? serviceEndpointPolicyDefinitions;
  /// A collection of references to subnets.
  final pulumi.Input<List<SubnetResponse>> subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceEndpointPolicyInterfaceEndpointResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the service endpoint policy. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [resourceGuid] The resource GUID property of the service endpoint policy resource.
  /// [serviceEndpointPolicyDefinitions] A collection of service endpoint policy definitions of the service endpoint policy.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const ServiceEndpointPolicyInterfaceEndpointResponse({
    this.etag,
    this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.serviceEndpointPolicyDefinitions,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'serviceEndpointPolicyDefinitions': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPolicyDefinitionInterfaceEndpointResponse>, List<Map<String, dynamic>>>(serviceEndpointPolicyDefinitions, (value) => pulumi.Input.encodeList<ServiceEndpointPolicyDefinitionInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': pulumi.Input.mapInputValue<List<SubnetResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
    };
  }

  factory ServiceEndpointPolicyInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyInterfaceEndpointResponse(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      serviceEndpointPolicyDefinitions: (() { final guardedValue = map['serviceEndpointPolicyDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPolicyDefinitionInterfaceEndpointResponse>(guardedValue, (value) => ServiceEndpointPolicyDefinitionInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnets: pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetResponse>(map['subnets']!, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
