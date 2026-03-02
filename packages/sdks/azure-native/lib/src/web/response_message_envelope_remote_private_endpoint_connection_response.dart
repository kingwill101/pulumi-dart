// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_plan_response.dart';
import 'error_entity_response.dart';
import 'managed_service_identity_response.dart';
import 'remote_private_endpoint_connection_response.dart';
import 'sku_description_response.dart';

/// Message envelope that contains the common Azure resource manager properties and the resource provider specific content.
class ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse {
  /// Azure-AsyncOperation Error info.
  final pulumi.Input<ErrorEntityResponse>? error;
  /// Resource Id. Typically ID is populated only for responses to GET requests. Caller is responsible for passing in this
  /// value for GET requests only.
  /// For example: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupId}/providers/Microsoft.Web/sites/{sitename}
  final pulumi.Input<String>? id;
  /// MSI resource
  final pulumi.Input<ManagedServiceIdentityResponse>? identity;
  /// Geographical region resource belongs to e.g. SouthCentralUS, SouthEastAsia.
  final pulumi.Input<String>? location;
  /// Name of resource.
  final pulumi.Input<String>? name;
  /// Azure resource manager plan.
  final pulumi.Input<ArmPlanResponse>? plan;
  /// Resource specific properties.
  final pulumi.Input<RemotePrivateEndpointConnectionResponse>? properties;
  /// SKU description of the resource.
  final pulumi.Input<SkuDescriptionResponse>? sku;
  /// Azure-AsyncOperation Status info.
  final pulumi.Input<String>? status;
  /// Tags associated with resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of resource e.g "Microsoft.Web/sites".
  final pulumi.Input<String>? type;
  /// Logical Availability Zones the service is hosted in
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse].
  /// [error] Azure-AsyncOperation Error info.
  /// [id] Resource Id. Typically ID is populated only for responses to GET requests. Caller is responsible for passing in this
  /// [identity] MSI resource
  /// [location] Geographical region resource belongs to e.g. SouthCentralUS, SouthEastAsia.
  /// [name] Name of resource.
  /// [plan] Azure resource manager plan.
  /// [properties] Resource specific properties.
  /// [sku] SKU description of the resource.
  /// [status] Azure-AsyncOperation Status info.
  /// [tags] Tags associated with resource.
  /// [type] Type of resource e.g "Microsoft.Web/sites".
  /// [zones] Logical Availability Zones the service is hosted in
  ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse({
    this.error,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.plan,
    this.properties,
    this.sku,
    this.status,
    this.tags,
    this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorEntityResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'plan': ?pulumi.Input.mapOptionalInputValue<ArmPlanResponse, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<RemotePrivateEndpointConnectionResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuDescriptionResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'zones': ?zones,
    };
  }

  factory ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse(
      error: map['error'] == null ? null : (ErrorEntityResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      plan: map['plan'] == null ? null : (ArmPlanResponse.fromMap((map['plan'] as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (RemotePrivateEndpointConnectionResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (SkuDescriptionResponse.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

