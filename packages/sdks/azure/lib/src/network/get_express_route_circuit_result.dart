// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_express_route_circuit_peering.dart';
import 'get_express_route_circuit_service_provider_property.dart';
import 'get_express_route_circuit_sku.dart';

/// Result data returned by getExpressRouteCircuit.
class GetExpressRouteCircuitResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location where the ExpressRoute circuit exists
  final String? location;
  final String? name;
  /// A `peerings` block for the ExpressRoute circuit as documented below
  final List<GetExpressRouteCircuitPeering>? peerings;
  final String? resourceGroupName;
  /// The string needed by the service provider to provision the ExpressRoute circuit.
  final String? serviceKey;
  /// A `serviceProviderProperties` block for the ExpressRoute circuit as documented below
  final List<GetExpressRouteCircuitServiceProviderProperty>? serviceProviderProperties;
  /// The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`.
  final String? serviceProviderProvisioningState;
  /// A `sku` block for the ExpressRoute circuit as documented below.
  final GetExpressRouteCircuitSku? sku;

  /// Creates a new [GetExpressRouteCircuitResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the ExpressRoute circuit exists
  /// [name] Optional.
  /// [peerings] A `peerings` block for the ExpressRoute circuit as documented below
  /// [resourceGroupName] Optional.
  /// [serviceKey] The string needed by the service provider to provision the ExpressRoute circuit.
  /// [serviceProviderProperties] A `serviceProviderProperties` block for the ExpressRoute circuit as documented below
  /// [serviceProviderProvisioningState] The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`.
  /// [sku] A `sku` block for the ExpressRoute circuit as documented below.
  const GetExpressRouteCircuitResult({
    this.id,
    this.location,
    this.name,
    this.peerings,
    this.resourceGroupName,
    this.serviceKey,
    this.serviceProviderProperties,
    this.serviceProviderProvisioningState,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'peerings': ?(() { final guardedValue = peerings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExpressRouteCircuitPeering, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'serviceKey': ?serviceKey,
      'serviceProviderProperties': ?(() { final guardedValue = serviceProviderProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExpressRouteCircuitServiceProviderProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceProviderProvisioningState': ?serviceProviderProvisioningState,
      'sku': ?sku?.toMap(),
    };
  }

  factory GetExpressRouteCircuitResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerings: (() { final guardedValue = map['peerings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExpressRouteCircuitPeering>(guardedValue, (value) => GetExpressRouteCircuitPeering.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceKey: (() { final guardedValue = map['serviceKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceProviderProperties: (() { final guardedValue = map['serviceProviderProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExpressRouteCircuitServiceProviderProperty>(guardedValue, (value) => GetExpressRouteCircuitServiceProviderProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceProviderProvisioningState: (() { final guardedValue = map['serviceProviderProvisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return GetExpressRouteCircuitSku.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
