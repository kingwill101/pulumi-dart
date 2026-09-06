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
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// List of ExpressRoute connections to the ExpressRoute gateway.
  final List<ExpressRouteConnectionResponse>? expressRouteConnections;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the express route gateway resource.
  final String? provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// The Virtual Hub where the ExpressRoute gateway is or will be deployed.
  final VirtualHubIdResponse? virtualHub;

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
  const GetExpressRouteGatewayResult({
    this.allowNonVirtualWanTraffic,
    this.autoScaleConfiguration,
    this.azureApiVersion,
    this.etag,
    this.expressRouteConnections,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.tags,
    this.type,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonVirtualWanTraffic': ?allowNonVirtualWanTraffic,
      'autoScaleConfiguration': ?autoScaleConfiguration?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'expressRouteConnections': ?(() { final guardedValue = expressRouteConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressRouteConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': ?type,
      'virtualHub': ?virtualHub?.toMap(),
    };
  }

  factory GetExpressRouteGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteGatewayResult(
      allowNonVirtualWanTraffic: (() { final guardedValue = map['allowNonVirtualWanTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autoScaleConfiguration: (() { final guardedValue = map['autoScaleConfiguration']; if (guardedValue == null) return null; return ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expressRouteConnections: (() { final guardedValue = map['expressRouteConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteConnectionResponse>(guardedValue, (value) => ExpressRouteConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return VirtualHubIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
