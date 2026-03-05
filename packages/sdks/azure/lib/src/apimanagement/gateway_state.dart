// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_location_data.dart';

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The description of the API Management Gateway.
  final pulumi.Input<String>? description;
  /// A `location_data` block as documented below.
  final pulumi.Input<GatewayLocationData>? locationData;
  /// The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [GatewayState].
  /// [apiManagementId] The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
  /// [description] The description of the API Management Gateway.
  /// [locationData] A `location_data` block as documented below.
  /// [name] The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created.
  GatewayState({
    this.apiManagementId,
    this.description,
    this.locationData,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'description': ?description,
      'locationData': ?pulumi.Input.mapOptionalInputValue<GatewayLocationData, Map<String, dynamic>>(locationData, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      apiManagementId: (() { final guardedValue = map['apiManagementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationData: (() { final guardedValue = map['locationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayLocationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

