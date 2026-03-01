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
    pulumi.Output<bool>? allowClassicOperations,
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<double>? bandwidthInGbps,
    pulumi.Output<int>? bandwidthInMbps,
    pulumi.Output<String>? expressRoutePortId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peeringLocation,
    pulumi.Output<bool>? rateLimitingEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serviceKey,
    pulumi.Output<String>? serviceProviderName,
    pulumi.Output<String>? serviceProviderProvisioningState,
    pulumi.Output<ExpressRouteCircuitSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allowClassicOperations = pulumi.Input.asOptionalInput<bool>(allowClassicOperations),
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      bandwidthInGbps = pulumi.Input.asOptionalInput<double>(bandwidthInGbps),
      bandwidthInMbps = pulumi.Input.asOptionalInput<int>(bandwidthInMbps),
      expressRoutePortId = pulumi.Input.asOptionalInput<String>(expressRoutePortId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      peeringLocation = pulumi.Input.asOptionalInput<String>(peeringLocation),
      rateLimitingEnabled = pulumi.Input.asOptionalInput<bool>(rateLimitingEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serviceKey = pulumi.Input.asOptionalInput<String>(serviceKey),
      serviceProviderName = pulumi.Input.asOptionalInput<String>(serviceProviderName),
      serviceProviderProvisioningState = pulumi.Input.asOptionalInput<String>(serviceProviderProvisioningState),
      sku = pulumi.Input.asOptionalInput<ExpressRouteCircuitSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      allowClassicOperations: map['allowClassicOperations'] == null ? null : pulumi.Output.create<bool>(map['allowClassicOperations'] as bool),
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : pulumi.Output.create<double>(map['bandwidthInGbps'] as double),
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : pulumi.Output.create<int>(map['bandwidthInMbps'] as int),
      expressRoutePortId: map['expressRoutePortId'] == null ? null : pulumi.Output.create<String>(map['expressRoutePortId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peeringLocation: map['peeringLocation'] == null ? null : pulumi.Output.create<String>(map['peeringLocation'] as String),
      rateLimitingEnabled: map['rateLimitingEnabled'] == null ? null : pulumi.Output.create<bool>(map['rateLimitingEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceKey: map['serviceKey'] == null ? null : pulumi.Output.create<String>(map['serviceKey'] as String),
      serviceProviderName: map['serviceProviderName'] == null ? null : pulumi.Output.create<String>(map['serviceProviderName'] as String),
      serviceProviderProvisioningState: map['serviceProviderProvisioningState'] == null ? null : pulumi.Output.create<String>(map['serviceProviderProvisioningState'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ExpressRouteCircuitSku>(ExpressRouteCircuitSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

