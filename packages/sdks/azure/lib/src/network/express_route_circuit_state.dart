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
  /// > **Note:** The `express_route_port_id` and the `bandwidth_in_gbps` should be set together and they conflict with `service_provider_name`, `peering_location` and `bandwidth_in_mbps`.
  final pulumi.Input<double>? bandwidthInGbps;
  /// The bandwidth in Mbps of the circuit being created on the Service Provider.
  ///
  /// > **Note:** Once you increase your bandwidth, you will not be able to decrease it to its previous value.
  ///
  /// > **Note:** The `service_provider_name`, the `peering_location` and the `bandwidth_in_mbps` should be set together and they conflict with `express_route_port_id` and `bandwidth_in_gbps`.
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
  ExpressRouteCircuitState({
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
      allowClassicOperations: map['allowClassicOperations'] == null ? null : (map['allowClassicOperations']! as bool).input(),
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : (map['bandwidthInGbps']! as double).input(),
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : (map['bandwidthInMbps']! as int).input(),
      expressRoutePortId: map['expressRoutePortId'] == null ? null : (map['expressRoutePortId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peeringLocation: map['peeringLocation'] == null ? null : (map['peeringLocation']! as String).input(),
      rateLimitingEnabled: map['rateLimitingEnabled'] == null ? null : (map['rateLimitingEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      serviceKey: map['serviceKey'] == null ? null : (map['serviceKey']! as String).input(),
      serviceProviderName: map['serviceProviderName'] == null ? null : (map['serviceProviderName']! as String).input(),
      serviceProviderProvisioningState: map['serviceProviderProvisioningState'] == null ? null : (map['serviceProviderProvisioningState']! as String).input(),
      sku: map['sku'] == null ? null : (ExpressRouteCircuitSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

