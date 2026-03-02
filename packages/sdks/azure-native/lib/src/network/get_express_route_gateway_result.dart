// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_response.dart';
import 'express_route_gateway_properties_response_auto_scale_configuration.dart';
import 'virtual_hub_id_response.dart';

/// Result data returned by getExpressRouteGateway.
class GetExpressRouteGatewayResult {
  /// Configures this gateway to accept traffic from non Virtual WAN networks.
  final bool? allowNonVirtualWanTraffic;
  /// Configuration for auto scaling.
  final ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration? autoScaleConfiguration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// List of ExpressRoute connections to the ExpressRoute gateway.
  final List<ExpressRouteConnectionResponse>? expressRouteConnections;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the express route gateway resource.
  final String provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// The Virtual Hub where the ExpressRoute gateway is or will be deployed.
  final VirtualHubIdResponse virtualHub;

  /// Creates a new [GetExpressRouteGatewayResult].
  /// [allowNonVirtualWanTraffic] Configures this gateway to accept traffic from non Virtual WAN networks.
  /// [autoScaleConfiguration] Configuration for auto scaling.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteConnections] List of ExpressRoute connections to the ExpressRoute gateway.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the express route gateway resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualHub] The Virtual Hub where the ExpressRoute gateway is or will be deployed.
  GetExpressRouteGatewayResult({
    this.allowNonVirtualWanTraffic,
    this.autoScaleConfiguration,
    required this.azureApiVersion,
    required this.etag,
    this.expressRouteConnections,
    this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.tags,
    required this.type,
    required this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonVirtualWanTraffic': ?allowNonVirtualWanTraffic,
      'autoScaleConfiguration': ?autoScaleConfiguration == null ? null : autoScaleConfiguration!.toMap(),
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'expressRouteConnections': ?expressRouteConnections == null ? null : pulumi.Input.encodeList<ExpressRouteConnectionResponse, Map<String, dynamic>>(expressRouteConnections!, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'virtualHub': virtualHub.toMap(),
    };
  }

  factory GetExpressRouteGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteGatewayResult(
      allowNonVirtualWanTraffic: map['allowNonVirtualWanTraffic'] == null ? null : map['allowNonVirtualWanTraffic']! as bool,
      autoScaleConfiguration: map['autoScaleConfiguration'] == null ? null : ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration.fromMap((map['autoScaleConfiguration']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      expressRouteConnections: map['expressRouteConnections'] == null ? null : pulumi.Input.decodeList<ExpressRouteConnectionResponse>(map['expressRouteConnections']!, (value) => ExpressRouteConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualHub: VirtualHubIdResponse.fromMap((map['virtualHub'] as Map).cast<String, dynamic>()),
    );
  }
}

