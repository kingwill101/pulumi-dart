// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_link_mac_sec_config_response.dart';

/// ExpressRouteLink child resource definition.
class ExpressRouteLinkResponse {
  /// Administrative state of the physical port.
  final pulumi.Input<String>? adminState;

  /// Cololocation for ExpressRoute Hybrid Direct.
  final pulumi.Input<String> coloLocation;

  /// Physical fiber port type.
  final pulumi.Input<String> connectorType;

  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Name of Azure router interface.
  final pulumi.Input<String> interfaceName;

  /// MacSec configuration.
  final pulumi.Input<ExpressRouteLinkMacSecConfigResponse>? macSecConfig;

  /// Name of child port resource that is unique among child port resources of the parent.
  final pulumi.Input<String>? name;

  /// Mapping between physical port to patch panel port.
  final pulumi.Input<String> patchPanelId;

  /// The provisioning state of the express route link resource.
  final pulumi.Input<String> provisioningState;

  /// Mapping of physical patch panel to rack.
  final pulumi.Input<String> rackId;

  /// Name of Azure router associated with physical port.
  final pulumi.Input<String> routerName;

  /// Creates a new [ExpressRouteLinkResponse].
  /// [adminState] Administrative state of the physical port.
  /// [coloLocation] Cololocation for ExpressRoute Hybrid Direct.
  /// [connectorType] Physical fiber port type.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [interfaceName] Name of Azure router interface.
  /// [macSecConfig] MacSec configuration.
  /// [name] Name of child port resource that is unique among child port resources of the parent.
  /// [patchPanelId] Mapping between physical port to patch panel port.
  /// [provisioningState] The provisioning state of the express route link resource.
  /// [rackId] Mapping of physical patch panel to rack.
  /// [routerName] Name of Azure router associated with physical port.
  ExpressRouteLinkResponse({
    this.adminState,
    required this.coloLocation,
    required this.connectorType,
    required this.etag,
    this.id,
    required this.interfaceName,
    this.macSecConfig,
    this.name,
    required this.patchPanelId,
    required this.provisioningState,
    required this.rackId,
    required this.routerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminState': ?adminState,
      'coloLocation': coloLocation,
      'connectorType': connectorType,
      'etag': etag,
      'id': ?id,
      'interfaceName': interfaceName,
      'macSecConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ExpressRouteLinkMacSecConfigResponse,
            Map<String, dynamic>
          >(macSecConfig, (value) => value.toMap()),
      'name': ?name,
      'patchPanelId': patchPanelId,
      'provisioningState': provisioningState,
      'rackId': rackId,
      'routerName': routerName,
    };
  }

  factory ExpressRouteLinkResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteLinkResponse(
      adminState: (() {
        final guardedValue = map['adminState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coloLocation: pulumi.Input.fromValue(map['coloLocation'] as String),
      connectorType: pulumi.Input.fromValue(map['connectorType'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interfaceName: pulumi.Input.fromValue(map['interfaceName'] as String),
      macSecConfig: (() {
        final guardedValue = map['macSecConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExpressRouteLinkMacSecConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      patchPanelId: pulumi.Input.fromValue(map['patchPanelId'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      rackId: pulumi.Input.fromValue(map['rackId'] as String),
      routerName: pulumi.Input.fromValue(map['routerName'] as String),
    );
  }
}
