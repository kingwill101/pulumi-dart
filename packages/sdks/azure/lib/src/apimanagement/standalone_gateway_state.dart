// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standalone_gateway_sku.dart';

/// Input properties used for looking up and filtering StandaloneGateway resources.
class StandaloneGatewayState {
  /// Specifies the subnet ID in which the backend systems are hosted. Changing this forces a new resource to be created.
  final pulumi.Input<String>? backendSubnetId;
  /// Specifies the Azure Region where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this API Management Standalone Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<StandaloneGatewaySku>? sku;
  /// A mapping of tags which should be assigned to the API Management Standalone Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the type of VPN in which API Management gateway needs to be configured. Possible values are `External` and `Internal`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkType;

  /// Creates a new [StandaloneGatewayState].
  /// [backendSubnetId] Specifies the subnet ID in which the backend systems are hosted. Changing this forces a new resource to be created.
  /// [location] Specifies the Azure Region where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this API Management Standalone Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the API Management Standalone Gateway. Changing this forces a new resource to be created.
  /// [virtualNetworkType] Specifies the type of VPN in which API Management gateway needs to be configured. Possible values are `External` and `Internal`. Changing this forces a new resource to be created.
  StandaloneGatewayState({
    this.backendSubnetId,
    this.location,
    this.name,
    this.resourceGroupName,
    this.sku,
    this.tags,
    this.virtualNetworkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendSubnetId': ?backendSubnetId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<StandaloneGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkType': ?virtualNetworkType,
    };
  }

  factory StandaloneGatewayState.fromMap(Map<String, dynamic> map) {
    return StandaloneGatewayState(
      backendSubnetId: map['backendSubnetId'] == null ? null : (map['backendSubnetId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (StandaloneGatewaySku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNetworkType: map['virtualNetworkType'] == null ? null : (map['virtualNetworkType'] as String).input(),
    );
  }
}

