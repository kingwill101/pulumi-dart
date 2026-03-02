// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standalone_gateway_sku.dart';

/// {@template pulumi_apimanagement_standalone_gateway_standalone_gateway_args_doc}
/// The set of arguments for StandaloneGateway.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_standalone_gateway_standalone_gateway_args_doc}
class StandaloneGatewayArgs {
  /// Specifies the subnet ID in which the backend systems are hosted. Changing this forces a new resource to be created.
  final pulumi.Input<String>? backendSubnetId;
  /// Specifies the Azure Region where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this API Management Standalone Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<StandaloneGatewaySku> sku;
  /// A mapping of tags which should be assigned to the API Management Standalone Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the type of VPN in which API Management gateway needs to be configured. Possible values are `External` and `Internal`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkType;

  /// Creates a new [StandaloneGatewayArgs].
  /// [backendSubnetId] Specifies the subnet ID in which the backend systems are hosted. Changing this forces a new resource to be created.
  /// [location] Specifies the Azure Region where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this API Management Standalone Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the API Management Standalone Gateway. Changing this forces a new resource to be created.
  /// [virtualNetworkType] Specifies the type of VPN in which API Management gateway needs to be configured. Possible values are `External` and `Internal`. Changing this forces a new resource to be created.
  StandaloneGatewayArgs({
    this.backendSubnetId,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.virtualNetworkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendSubnetId': ?backendSubnetId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<StandaloneGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkType': ?virtualNetworkType,
    };
  }

  factory StandaloneGatewayArgs.fromMap(Map<String, dynamic> map) {
    return StandaloneGatewayArgs(
      backendSubnetId: map['backendSubnetId'] == null ? null : (map['backendSubnetId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (StandaloneGatewaySku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkType: map['virtualNetworkType'] == null ? null : (map['virtualNetworkType']! as String).input(),
    );
  }
}

