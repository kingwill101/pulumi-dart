// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_link_mac_sec_config_response.dart';

/// ExpressRouteLink child resource definition.
class ExpressRouteLinkResponse {
  /// Administrative state of the physical port.
  final String? adminState;
  /// Cololocation for ExpressRoute Hybrid Direct.
  final String coloLocation;
  /// Physical fiber port type.
  final String connectorType;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of Azure router interface.
  final String interfaceName;
  /// MacSec configuration.
  final ExpressRouteLinkMacSecConfigResponse? macSecConfig;
  /// Name of child port resource that is unique among child port resources of the parent.
  final String? name;
  /// Mapping between physical port to patch panel port.
  final String patchPanelId;
  /// The provisioning state of the express route link resource.
  final String provisioningState;
  /// Mapping of physical patch panel to rack.
  final String rackId;
  /// Name of Azure router associated with physical port.
  final String routerName;

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
      'macSecConfig': ?macSecConfig == null ? null : macSecConfig!.toMap(),
      'name': ?name,
      'patchPanelId': patchPanelId,
      'provisioningState': provisioningState,
      'rackId': rackId,
      'routerName': routerName,
    };
  }

  factory ExpressRouteLinkResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteLinkResponse(
      adminState: map['adminState'] == null ? null : map['adminState'] as String,
      coloLocation: map['coloLocation'] as String,
      connectorType: map['connectorType'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      interfaceName: map['interfaceName'] as String,
      macSecConfig: map['macSecConfig'] == null ? null : ExpressRouteLinkMacSecConfigResponse.fromMap((map['macSecConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      patchPanelId: map['patchPanelId'] as String,
      provisioningState: map['provisioningState'] as String,
      rackId: map['rackId'] as String,
      routerName: map['routerName'] as String,
    );
  }
}

