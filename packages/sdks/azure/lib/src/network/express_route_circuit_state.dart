// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_sku.dart';

/// Input properties used for looking up and filtering ExpressRouteCircuit resources.
class ExpressRouteCircuitState {
  /// Allow the circuit to interact with classic (RDFE) resources. Defaults to `false`.
  final pulumi.Input<bool>? allowClassicOperations;
  /// The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription.
  final pulumi.Input<String>? authorizationKey;
  /// The bandwidth in Gbps of the circuit being created on the Express Route Port.
  ///
  /// &gt; **Note:** The `expressRoutePortId` and the `bandwidthInGbps` should be set together and they conflict with `serviceProviderName`, `peeringLocation` and `bandwidthInMbps`.
  final pulumi.Input<double>? bandwidthInGbps;
  /// The bandwidth in Mbps of the circuit being created on the Service Provider.
  ///
  /// &gt; **Note:** Once you increase your bandwidth, you will not be able to decrease it to its previous value.
  ///
  /// &gt; **Note:** The `serviceProviderName`, the `peeringLocation` and the `bandwidthInMbps` should be set together and they conflict with `expressRoutePortId` and `bandwidthInGbps`.
  final pulumi.Input<int>? bandwidthInMbps;
  /// The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expressRoutePortId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the peering location and **not** the Azure resource location. Changing this forces a new resource to be created.
  final pulumi.Input<String>? peeringLocation;
  /// Enable [rate limiting](https://learn.microsoft.com/en-us/azure/expressroute/rate-limit) for the circuit. Only works with ExpressRoute Ports. Defaults to `false`.
  final pulumi.Input<bool>? rateLimitingEnabled;
  /// The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The string needed by the service provider to provision the ExpressRoute circuit.
  final pulumi.Input<String>? serviceKey;
  /// The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceProviderName;
  /// The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`.
  final pulumi.Input<String>? serviceProviderProvisioningState;
  /// A `sku` block for the ExpressRoute circuit as documented below.
  final pulumi.Input<ExpressRouteCircuitSku>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ExpressRouteCircuitState].
  /// [allowClassicOperations] Allow the circuit to interact with classic (RDFE) resources. Defaults to `false`.
  /// [authorizationKey] The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription.
  /// [bandwidthInGbps] The bandwidth in Gbps of the circuit being created on the Express Route Port.
  /// [bandwidthInMbps] The bandwidth in Mbps of the circuit being created on the Service Provider.
  /// [expressRoutePortId] The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  /// [peeringLocation] The name of the peering location and **not** the Azure resource location. Changing this forces a new resource to be created.
  /// [rateLimitingEnabled] Enable [rate limiting](https://learn.microsoft.com/en-us/azure/expressroute/rate-limit) for the circuit. Only works with ExpressRoute Ports. Defaults to `false`.
  /// [resourceGroupName] The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  /// [serviceKey] The string needed by the service provider to provision the ExpressRoute circuit.
  /// [serviceProviderName] The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created.
  /// [serviceProviderProvisioningState] The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`.
  /// [sku] A `sku` block for the ExpressRoute circuit as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  const ExpressRouteCircuitState({
    this.allowClassicOperations,
    this.authorizationKey,
    this.bandwidthInGbps,
    this.bandwidthInMbps,
    this.expressRoutePortId,
    this.location,
    this.name,
    this.peeringLocation,
    this.rateLimitingEnabled,
    this.resourceGroupName,
    this.serviceKey,
    this.serviceProviderName,
    this.serviceProviderProvisioningState,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClassicOperations': ?allowClassicOperations,
      'authorizationKey': ?authorizationKey,
      'bandwidthInGbps': ?bandwidthInGbps,
      'bandwidthInMbps': ?bandwidthInMbps,
      'expressRoutePortId': ?expressRoutePortId,
      'location': ?location,
      'name': ?name,
      'peeringLocation': ?peeringLocation,
      'rateLimitingEnabled': ?rateLimitingEnabled,
      'resourceGroupName': ?resourceGroupName,
      'serviceKey': ?serviceKey,
      'serviceProviderName': ?serviceProviderName,
      'serviceProviderProvisioningState': ?serviceProviderProvisioningState,
      'sku': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ExpressRouteCircuitState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitState(
      allowClassicOperations: (() { final guardedValue = map['allowClassicOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bandwidthInGbps: (() { final guardedValue = map['bandwidthInGbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      bandwidthInMbps: (() { final guardedValue = map['bandwidthInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expressRoutePortId: (() { final guardedValue = map['expressRoutePortId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringLocation: (() { final guardedValue = map['peeringLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateLimitingEnabled: (() { final guardedValue = map['rateLimitingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceKey: (() { final guardedValue = map['serviceKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderName: (() { final guardedValue = map['serviceProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderProvisioningState: (() { final guardedValue = map['serviceProviderProvisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
