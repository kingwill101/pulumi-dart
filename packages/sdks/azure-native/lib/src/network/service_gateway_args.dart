// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_target_address_properties_format.dart';
import 'service_gateway_sku.dart';
import 'virtual_network.dart';

/// {@template pulumi_network_service_gateway_args_doc}
/// The set of arguments for ServiceGateway.
/// {@endtemplate}
/// {@macro pulumi_network_service_gateway_args_doc}
class ServiceGatewayArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Route Target address of Service gateway
  final pulumi.Input<RouteTargetAddressPropertiesFormat?>? routeTargetAddress;
  /// Route Target address V6 of Service gateway
  final pulumi.Input<RouteTargetAddressPropertiesFormat?>? routeTargetAddressV6;
  /// The name of the service gateway.
  final pulumi.Input<String?>? serviceGatewayName;
  /// The service gateway SKU.
  final pulumi.Input<ServiceGatewaySku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Reference to an existing virtual network.
  final pulumi.Input<VirtualNetwork?>? virtualNetwork;
  /// A list of availability zones denoting the zone in which service gateway should be deployed.
  ///
  /// - The zone values must be provided as strings representing numeric identifiers like "1", "2", "3" etc.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [ServiceGatewayArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routeTargetAddress] Route Target address of Service gateway
  /// [routeTargetAddressV6] Route Target address V6 of Service gateway
  /// [serviceGatewayName] The name of the service gateway.
  /// [sku] The service gateway SKU.
  /// [tags] Resource tags.
  /// [virtualNetwork] Reference to an existing virtual network.
  /// [zones] A list of availability zones denoting the zone in which service gateway should be deployed.
  const ServiceGatewayArgs({
    this.location,
    required this.resourceGroupName,
    this.routeTargetAddress,
    this.routeTargetAddressV6,
    this.serviceGatewayName,
    this.sku,
    this.tags,
    this.virtualNetwork,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'routeTargetAddress': ?pulumi.Input.mapOptionalInputValue<RouteTargetAddressPropertiesFormat, Map<String, dynamic>>(routeTargetAddress, (value) => value.toMap()),
      'routeTargetAddressV6': ?pulumi.Input.mapOptionalInputValue<RouteTargetAddressPropertiesFormat, Map<String, dynamic>>(routeTargetAddressV6, (value) => value.toMap()),
      'serviceGatewayName': ?serviceGatewayName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ServiceGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<VirtualNetwork, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ServiceGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ServiceGatewayArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeTargetAddress: (() { final guardedValue = map['routeTargetAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTargetAddressPropertiesFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routeTargetAddressV6: (() { final guardedValue = map['routeTargetAddressV6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTargetAddressPropertiesFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceGatewayName: (() { final guardedValue = map['serviceGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceGatewaySku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
