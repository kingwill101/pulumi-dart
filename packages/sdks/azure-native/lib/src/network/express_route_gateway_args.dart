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
    pulumi.Output<bool>? allowNonVirtualWanTraffic,
    pulumi.Output<ExpressRouteGatewayPropertiesAutoScaleConfiguration>? autoScaleConfiguration,
    pulumi.Output<List<ExpressRouteConnectionNetwork>>? expressRouteConnections,
    pulumi.Output<String>? expressRouteGatewayName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<VirtualHubId> virtualHub,
  }) :
      allowNonVirtualWanTraffic = pulumi.Input.asOptionalInput<bool>(allowNonVirtualWanTraffic),
      autoScaleConfiguration = pulumi.Input.asOptionalInput<ExpressRouteGatewayPropertiesAutoScaleConfiguration>(autoScaleConfiguration),
      expressRouteConnections = pulumi.Input.asOptionalInput<List<ExpressRouteConnectionNetwork>>(expressRouteConnections),
      expressRouteGatewayName = pulumi.Input.asOptionalInput<String>(expressRouteGatewayName),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHub = pulumi.Input.asInput<VirtualHubId>(virtualHub);

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
      allowNonVirtualWanTraffic: map['allowNonVirtualWanTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowNonVirtualWanTraffic'] as bool),
      autoScaleConfiguration: map['autoScaleConfiguration'] == null ? null : pulumi.Output.create<ExpressRouteGatewayPropertiesAutoScaleConfiguration>(ExpressRouteGatewayPropertiesAutoScaleConfiguration.fromMap((map['autoScaleConfiguration'] as Map).cast<String, dynamic>())),
      expressRouteConnections: map['expressRouteConnections'] == null ? null : pulumi.Output.create<List<ExpressRouteConnectionNetwork>>((map['expressRouteConnections'] as List).cast<ExpressRouteConnectionNetwork>()),
      expressRouteGatewayName: map['expressRouteGatewayName'] == null ? null : pulumi.Output.create<String>(map['expressRouteGatewayName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHub: pulumi.Output.create<VirtualHubId>(VirtualHubId.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())),
    );
  }
}

