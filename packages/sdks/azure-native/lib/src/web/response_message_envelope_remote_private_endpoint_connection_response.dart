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
  final pulumi.Input<ErrorEntityResponse?>? error;
  /// Resource Id. Typically ID is populated only for responses to GET requests. Caller is responsible for passing in this
  /// value for GET requests only.
  /// For example: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupId}/providers/Microsoft.Web/sites/{sitename}
  final pulumi.Input<String?>? id;
  /// MSI resource
  final pulumi.Input<ManagedServiceIdentityResponse?>? identity;
  /// Geographical region resource belongs to e.g. SouthCentralUS, SouthEastAsia.
  final pulumi.Input<String?>? location;
  /// Name of resource.
  final pulumi.Input<String?>? name;
  /// Azure resource manager plan.
  final pulumi.Input<ArmPlanResponse?>? plan;
  /// Resource specific properties.
  final pulumi.Input<RemotePrivateEndpointConnectionResponse?>? properties;
  /// SKU description of the resource.
  final pulumi.Input<SkuDescriptionResponse?>? sku;
  /// Azure-AsyncOperation Status info.
  final pulumi.Input<String?>? status;
  /// Tags associated with resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Type of resource e.g "Microsoft.Web/sites".
  final pulumi.Input<String?>? type;
  /// Logical Availability Zones the service is hosted in
  final pulumi.Input<List<String>?>? zones;

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
  const ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse({
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
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmPlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemotePrivateEndpointConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
