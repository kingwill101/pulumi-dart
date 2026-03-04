// ignore_for_file: unused_element, unnecessary_cast

import 'route_target_address_properties_format_response.dart';
import 'service_gateway_sku_response.dart';
import 'system_data_response.dart';
import 'virtual_network_response.dart';

/// Result data returned by getServiceGateway.
class GetServiceGatewayResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The provisioning state of the service gateway resource.
  final String provisioningState;

  /// The resource GUID property of the service gateway resource.
  final String resourceGuid;

  /// Route Target address of Service gateway
  final RouteTargetAddressPropertiesFormatResponse? routeTargetAddress;

  /// Route Target address V6 of Service gateway
  final RouteTargetAddressPropertiesFormatResponse? routeTargetAddressV6;

  /// The service gateway SKU.
  final ServiceGatewaySkuResponse? sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Reference to an existing virtual network.
  final VirtualNetworkResponse? virtualNetwork;

  /// A list of availability zones denoting the zone in which service gateway should be deployed.
  ///
  /// - The zone values must be provided as strings representing numeric identifiers like "1", "2", "3" etc.
  final List<String>? zones;

  /// Creates a new [GetServiceGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the service gateway resource.
  /// [resourceGuid] The resource GUID property of the service gateway resource.
  /// [routeTargetAddress] Route Target address of Service gateway
  /// [routeTargetAddressV6] Route Target address V6 of Service gateway
  /// [sku] The service gateway SKU.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualNetwork] Reference to an existing virtual network.
  /// [zones] A list of availability zones denoting the zone in which service gateway should be deployed.
  GetServiceGatewayResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.routeTargetAddress,
    this.routeTargetAddressV6,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
    this.virtualNetwork,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'routeTargetAddress': ?routeTargetAddress?.toMap(),
      'routeTargetAddressV6': ?routeTargetAddressV6?.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNetwork': ?virtualNetwork?.toMap(),
      'zones': ?zones,
    };
  }

  factory GetServiceGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetServiceGatewayResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      routeTargetAddress: (() {
        final guardedValue = map['routeTargetAddress'];
        if (guardedValue == null) return null;
        return RouteTargetAddressPropertiesFormatResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      routeTargetAddressV6: (() {
        final guardedValue = map['routeTargetAddressV6'];
        if (guardedValue == null) return null;
        return RouteTargetAddressPropertiesFormatResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return ServiceGatewaySkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      virtualNetwork: (() {
        final guardedValue = map['virtualNetwork'];
        if (guardedValue == null) return null;
        return VirtualNetworkResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
