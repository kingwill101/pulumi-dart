// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_location_data.dart';

/// {@template pulumi_apimanagement_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_gateway_args_doc}
class GatewayArgs {
  /// The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
  final pulumi.Input<String> apiManagementId;
  /// The description of the API Management Gateway.
  final pulumi.Input<String>? description;
  /// A `locationData` block as documented below.
  final pulumi.Input<GatewayLocationData> locationData;
  /// The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [GatewayArgs].
  /// [apiManagementId] The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
  /// [description] The description of the API Management Gateway.
  /// [locationData] A `locationData` block as documented below.
  /// [name] The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created.
  const GatewayArgs({
    required this.apiManagementId,
    this.description,
    required this.locationData,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'description': ?description,
      'locationData': pulumi.Input.mapInputValue<GatewayLocationData, Map<String, dynamic>>(locationData, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      apiManagementId: pulumi.Input.fromValue(map['apiManagementId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationData: pulumi.Input.fromValue(GatewayLocationData.fromMap((map['locationData']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
