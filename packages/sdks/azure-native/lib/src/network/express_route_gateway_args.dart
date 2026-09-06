// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection.dart';
import 'express_route_gateway_properties_auto_scale_configuration.dart';
import 'virtual_hub_id.dart';

/// {@template pulumi_network_express_route_gateway_args_doc}
/// The set of arguments for ExpressRouteGateway.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_gateway_args_doc}
class ExpressRouteGatewayArgs {
  /// Configures this gateway to accept traffic from non Virtual WAN networks.
  final pulumi.Input<bool?>? allowNonVirtualWanTraffic;
  /// Configuration for auto scaling.
  final pulumi.Input<ExpressRouteGatewayPropertiesAutoScaleConfiguration?>? autoScaleConfiguration;
  /// List of ExpressRoute connections to the ExpressRoute gateway.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<ExpressRouteConnection>?>? expressRouteConnections;
  /// The name of the ExpressRoute gateway.
  final pulumi.Input<String?>? expressRouteGatewayName;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Virtual Hub where the ExpressRoute gateway is or will be deployed.
  final pulumi.Input<VirtualHubId> virtualHub;

  /// Creates a new [ExpressRouteGatewayArgs].
  /// [allowNonVirtualWanTraffic] Configures this gateway to accept traffic from non Virtual WAN networks.
  /// [autoScaleConfiguration] Configuration for auto scaling.
  /// [expressRouteConnections] List of ExpressRoute connections to the ExpressRoute gateway.
  /// [expressRouteGatewayName] The name of the ExpressRoute gateway.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  /// [virtualHub] The Virtual Hub where the ExpressRoute gateway is or will be deployed.
  const ExpressRouteGatewayArgs({
    this.allowNonVirtualWanTraffic,
    this.autoScaleConfiguration,
    this.expressRouteConnections,
    this.expressRouteGatewayName,
    this.id,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonVirtualWanTraffic': ?allowNonVirtualWanTraffic,
      'autoScaleConfiguration': ?pulumi.Input.mapOptionalInputValue<ExpressRouteGatewayPropertiesAutoScaleConfiguration, Map<String, dynamic>>(autoScaleConfiguration, (value) => value.toMap()),
      'expressRouteConnections': ?pulumi.Input.mapOptionalInputValue<List<ExpressRouteConnection>, List<Map<String, dynamic>>>(expressRouteConnections, (value) => pulumi.Input.encodeList<ExpressRouteConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expressRouteGatewayName': ?expressRouteGatewayName,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualHub': pulumi.Input.mapInputValue<VirtualHubId, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
    };
  }

  factory ExpressRouteGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteGatewayArgs(
      allowNonVirtualWanTraffic: (() { final guardedValue = map['allowNonVirtualWanTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoScaleConfiguration: (() { final guardedValue = map['autoScaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteGatewayPropertiesAutoScaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expressRouteConnections: (() { final guardedValue = map['expressRouteConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressRouteConnection>(guardedValue, (value) => ExpressRouteConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expressRouteGatewayName: (() { final guardedValue = map['expressRouteGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHub: pulumi.Input.fromValue(VirtualHubId.fromMap((map['virtualHub']! as Map).cast<String, dynamic>())),
    );
  }
}
