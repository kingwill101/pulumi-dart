// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_authorization_response.dart';
import 'express_route_circuit_peering_response.dart';
import 'express_route_circuit_service_provider_properties_response.dart';
import 'express_route_circuit_sku_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getExpressRouteCircuit.
class GetExpressRouteCircuitResult {
  /// Allow classic operations.
  final bool? allowClassicOperations;
  /// The authorizationKey.
  final String? authorizationKey;
  /// The authorization status of the Circuit.
  final String authorizationStatus;
  /// The list of authorizations.
  final List<ExpressRouteCircuitAuthorizationResponse>? authorizations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The bandwidth of the circuit when the circuit is provisioned on an ExpressRoutePort resource.
  final double? bandwidthInGbps;
  /// The CircuitProvisioningState state of the resource.
  final String? circuitProvisioningState;
  /// Flag denoting rate-limiting status of the ExpressRoute direct-port circuit.
  final bool? enableDirectPortRateLimit;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The reference to the ExpressRoutePort resource when the circuit is provisioned on an ExpressRoutePort resource.
  final SubResourceResponse? expressRoutePort;
  /// The GatewayManager Etag.
  final String? gatewayManagerEtag;
  /// Flag denoting global reach status.
  final bool? globalReachEnabled;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The list of peerings.
  final List<ExpressRouteCircuitPeeringResponse>? peerings;
  /// The provisioning state of the express route circuit resource.
  final String provisioningState;
  /// The ServiceKey.
  final String? serviceKey;
  /// The ServiceProviderNotes.
  final String? serviceProviderNotes;
  /// The ServiceProviderProperties.
  final ExpressRouteCircuitServiceProviderPropertiesResponse? serviceProviderProperties;
  /// The ServiceProviderProvisioningState state of the resource.
  final String? serviceProviderProvisioningState;
  /// The SKU.
  final ExpressRouteCircuitSkuResponse? sku;
  /// The identifier of the circuit traffic. Outer tag for QinQ encapsulation.
  final int stag;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetExpressRouteCircuitResult].
  /// [allowClassicOperations] Allow classic operations.
  /// [authorizationKey] The authorizationKey.
  /// [authorizationStatus] The authorization status of the Circuit.
  /// [authorizations] The list of authorizations.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bandwidthInGbps] The bandwidth of the circuit when the circuit is provisioned on an ExpressRoutePort resource.
  /// [circuitProvisioningState] The CircuitProvisioningState state of the resource.
  /// [enableDirectPortRateLimit] Flag denoting rate-limiting status of the ExpressRoute direct-port circuit.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRoutePort] The reference to the ExpressRoutePort resource when the circuit is provisioned on an ExpressRoutePort resource.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [globalReachEnabled] Flag denoting global reach status.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [peerings] The list of peerings.
  /// [provisioningState] The provisioning state of the express route circuit resource.
  /// [serviceKey] The ServiceKey.
  /// [serviceProviderNotes] The ServiceProviderNotes.
  /// [serviceProviderProperties] The ServiceProviderProperties.
  /// [serviceProviderProvisioningState] The ServiceProviderProvisioningState state of the resource.
  /// [sku] The SKU.
  /// [stag] The identifier of the circuit traffic. Outer tag for QinQ encapsulation.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetExpressRouteCircuitResult({
    this.allowClassicOperations,
    this.authorizationKey,
    required this.authorizationStatus,
    this.authorizations,
    required this.azureApiVersion,
    this.bandwidthInGbps,
    this.circuitProvisioningState,
    this.enableDirectPortRateLimit,
    required this.etag,
    this.expressRoutePort,
    this.gatewayManagerEtag,
    this.globalReachEnabled,
    this.id,
    this.location,
    required this.name,
    this.peerings,
    required this.provisioningState,
    this.serviceKey,
    this.serviceProviderNotes,
    this.serviceProviderProperties,
    this.serviceProviderProvisioningState,
    this.sku,
    required this.stag,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClassicOperations': ?allowClassicOperations,
      'authorizationKey': ?authorizationKey,
      'authorizationStatus': authorizationStatus,
      'authorizations': ?(() { final guardedValue = authorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressRouteCircuitAuthorizationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'bandwidthInGbps': ?bandwidthInGbps,
      'circuitProvisioningState': ?circuitProvisioningState,
      'enableDirectPortRateLimit': ?enableDirectPortRateLimit,
      'etag': etag,
      'expressRoutePort': ?expressRoutePort?.toMap(),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'globalReachEnabled': ?globalReachEnabled,
      'id': ?id,
      'location': ?location,
      'name': name,
      'peerings': ?(() { final guardedValue = peerings; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressRouteCircuitPeeringResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'serviceKey': ?serviceKey,
      'serviceProviderNotes': ?serviceProviderNotes,
      'serviceProviderProperties': ?serviceProviderProperties?.toMap(),
      'serviceProviderProvisioningState': ?serviceProviderProvisioningState,
      'sku': ?sku?.toMap(),
      'stag': stag,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetExpressRouteCircuitResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitResult(
      allowClassicOperations: (() { final guardedValue = map['allowClassicOperations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizationStatus: map['authorizationStatus'] as String,
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitAuthorizationResponse>(guardedValue, (value) => ExpressRouteCircuitAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      bandwidthInGbps: (() { final guardedValue = map['bandwidthInGbps']; if (guardedValue == null) return null; return guardedValue as double; })(),
      circuitProvisioningState: (() { final guardedValue = map['circuitProvisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDirectPortRateLimit: (() { final guardedValue = map['enableDirectPortRateLimit']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      expressRoutePort: (() { final guardedValue = map['expressRoutePort']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayManagerEtag: (() { final guardedValue = map['gatewayManagerEtag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalReachEnabled: (() { final guardedValue = map['globalReachEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      peerings: (() { final guardedValue = map['peerings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(guardedValue, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      serviceKey: (() { final guardedValue = map['serviceKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceProviderNotes: (() { final guardedValue = map['serviceProviderNotes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceProviderProperties: (() { final guardedValue = map['serviceProviderProperties']; if (guardedValue == null) return null; return ExpressRouteCircuitServiceProviderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceProviderProvisioningState: (() { final guardedValue = map['serviceProviderProvisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ExpressRouteCircuitSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      stag: map['stag'] as int,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

