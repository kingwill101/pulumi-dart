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
      'authorizations': ?authorizations == null ? null : pulumi.Input.encodeList<ExpressRouteCircuitAuthorizationResponse, Map<String, dynamic>>(authorizations!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'bandwidthInGbps': ?bandwidthInGbps,
      'circuitProvisioningState': ?circuitProvisioningState,
      'enableDirectPortRateLimit': ?enableDirectPortRateLimit,
      'etag': etag,
      'expressRoutePort': ?expressRoutePort == null ? null : expressRoutePort!.toMap(),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'globalReachEnabled': ?globalReachEnabled,
      'id': ?id,
      'location': ?location,
      'name': name,
      'peerings': ?peerings == null ? null : pulumi.Input.encodeList<ExpressRouteCircuitPeeringResponse, Map<String, dynamic>>(peerings!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'serviceKey': ?serviceKey,
      'serviceProviderNotes': ?serviceProviderNotes,
      'serviceProviderProperties': ?serviceProviderProperties == null ? null : serviceProviderProperties!.toMap(),
      'serviceProviderProvisioningState': ?serviceProviderProvisioningState,
      'sku': ?sku == null ? null : sku!.toMap(),
      'stag': stag,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetExpressRouteCircuitResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitResult(
      allowClassicOperations: map['allowClassicOperations'] == null ? null : map['allowClassicOperations']! as bool,
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey']! as String,
      authorizationStatus: map['authorizationStatus'] as String,
      authorizations: map['authorizations'] == null ? null : pulumi.Input.decodeList<ExpressRouteCircuitAuthorizationResponse>(map['authorizations']!, (value) => ExpressRouteCircuitAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : map['bandwidthInGbps']! as double,
      circuitProvisioningState: map['circuitProvisioningState'] == null ? null : map['circuitProvisioningState']! as String,
      enableDirectPortRateLimit: map['enableDirectPortRateLimit'] == null ? null : map['enableDirectPortRateLimit']! as bool,
      etag: map['etag'] as String,
      expressRoutePort: map['expressRoutePort'] == null ? null : SubResourceResponse.fromMap((map['expressRoutePort']! as Map).cast<String, dynamic>()),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : map['gatewayManagerEtag']! as String,
      globalReachEnabled: map['globalReachEnabled'] == null ? null : map['globalReachEnabled']! as bool,
      id: map['id'] == null ? null : map['id']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      peerings: map['peerings'] == null ? null : pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(map['peerings']!, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      serviceKey: map['serviceKey'] == null ? null : map['serviceKey']! as String,
      serviceProviderNotes: map['serviceProviderNotes'] == null ? null : map['serviceProviderNotes']! as String,
      serviceProviderProperties: map['serviceProviderProperties'] == null ? null : ExpressRouteCircuitServiceProviderPropertiesResponse.fromMap((map['serviceProviderProperties']! as Map).cast<String, dynamic>()),
      serviceProviderProvisioningState: map['serviceProviderProvisioningState'] == null ? null : map['serviceProviderProvisioningState']! as String,
      sku: map['sku'] == null ? null : ExpressRouteCircuitSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      stag: map['stag'] as int,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

