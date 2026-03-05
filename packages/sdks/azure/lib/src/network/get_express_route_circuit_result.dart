// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_express_route_circuit_peering.dart';
import 'get_express_route_circuit_service_provider_property.dart';
import 'get_express_route_circuit_sku.dart';

/// Result data returned by getExpressRouteCircuit.
class GetExpressRouteCircuitResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location where the ExpressRoute circuit exists
  final String location;
  final String name;
  /// A `peerings` block for the ExpressRoute circuit as documented below
  final List<GetExpressRouteCircuitPeering> peerings;
  final String resourceGroupName;
  /// The string needed by the service provider to provision the ExpressRoute circuit.
  final String serviceKey;
  /// A `service_provider_properties` block for the ExpressRoute circuit as documented below
  final List<GetExpressRouteCircuitServiceProviderProperty> serviceProviderProperties;
  /// The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`.
  final String serviceProviderProvisioningState;
  /// A `sku` block for the ExpressRoute circuit as documented below.
  final GetExpressRouteCircuitSku sku;

  /// Creates a new [GetExpressRouteCircuitResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the ExpressRoute circuit exists
  /// [name] Required.
  /// [peerings] A `peerings` block for the ExpressRoute circuit as documented below
  /// [resourceGroupName] Required.
  /// [serviceKey] The string needed by the service provider to provision the ExpressRoute circuit.
  /// [serviceProviderProperties] A `service_provider_properties` block for the ExpressRoute circuit as documented below
  /// [serviceProviderProvisioningState] The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`.
  /// [sku] A `sku` block for the ExpressRoute circuit as documented below.
  GetExpressRouteCircuitResult({
    required this.id,
    required this.location,
    required this.name,
    required this.peerings,
    required this.resourceGroupName,
    required this.serviceKey,
    required this.serviceProviderProperties,
    required this.serviceProviderProvisioningState,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'peerings': pulumi.Input.encodeList<GetExpressRouteCircuitPeering, Map<String, dynamic>>(peerings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceKey': serviceKey,
      'serviceProviderProperties': pulumi.Input.encodeList<GetExpressRouteCircuitServiceProviderProperty, Map<String, dynamic>>(serviceProviderProperties, (value) => value.toMap()),
      'serviceProviderProvisioningState': serviceProviderProvisioningState,
      'sku': sku.toMap(),
    };
  }

  factory GetExpressRouteCircuitResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      peerings: pulumi.Input.decodeList<GetExpressRouteCircuitPeering>(map['peerings']!, (value) => GetExpressRouteCircuitPeering.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceKey: map['serviceKey'] as String,
      serviceProviderProperties: pulumi.Input.decodeList<GetExpressRouteCircuitServiceProviderProperty>(map['serviceProviderProperties']!, (value) => GetExpressRouteCircuitServiceProviderProperty.fromMap((value as Map).cast<String, dynamic>())),
      serviceProviderProvisioningState: map['serviceProviderProvisioningState'] as String,
      sku: GetExpressRouteCircuitSku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
    );
  }
}

