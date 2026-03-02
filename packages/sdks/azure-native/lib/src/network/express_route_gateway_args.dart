// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_network.dart';
import 'express_route_gateway_properties_auto_scale_configuration.dart';
import 'virtual_hub_id.dart';

/// {@template pulumi_network_express_route_gateway_args_doc}
/// The set of arguments for ExpressRouteGateway.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_gateway_args_doc}
class ExpressRouteGatewayArgs {
  /// Configures this gateway to accept traffic from non Virtual WAN networks.
  final pulumi.Input<bool>? allowNonVirtualWanTraffic;
  /// Configuration for auto scaling.
  final pulumi.Input<ExpressRouteGatewayPropertiesAutoScaleConfiguration>? autoScaleConfiguration;
  /// List of ExpressRoute connections to the ExpressRoute gateway.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<ExpressRouteConnectionNetwork>>? expressRouteConnections;
  /// The name of the ExpressRoute gateway.
  final pulumi.Input<String>? expressRouteGatewayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
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
  ExpressRouteGatewayArgs({
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
      'expressRouteConnections': ?expressRouteConnections,
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
      allowNonVirtualWanTraffic: map['allowNonVirtualWanTraffic'] == null ? null : (map['allowNonVirtualWanTraffic']! as bool).input(),
      autoScaleConfiguration: map['autoScaleConfiguration'] == null ? null : (ExpressRouteGatewayPropertiesAutoScaleConfiguration.fromMap((map['autoScaleConfiguration']! as Map).cast<String, dynamic>())).input(),
      expressRouteConnections: map['expressRouteConnections'] == null ? null : ((map['expressRouteConnections']! as List).cast<ExpressRouteConnectionNetwork>()).input(),
      expressRouteGatewayName: map['expressRouteGatewayName'] == null ? null : (map['expressRouteGatewayName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualHub: (VirtualHubId.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

