// ignore_for_file: unused_element, unnecessary_cast

import 'l2_connections_properties_response_edge_site.dart';
import 'l2_connections_properties_response_ground_station.dart';
import 'l2_connections_properties_response_ground_station_partner_router.dart';
import 'system_data_response.dart';

/// Result data returned by getL2Connection.
class GetL2ConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Globally-unique identifier for this connection that is to be used as a circuit ID.
  final String circuitId;
  /// A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
  final L2ConnectionsPropertiesResponseEdgeSite edgeSite;
  /// A reference to an Microsoft.Orbital/groundStations resource to route traffic for.
  final L2ConnectionsPropertiesResponseGroundStation groundStation;
  /// The name of the partner router to establish a connection to within the ground station.
  final L2ConnectionsPropertiesResponseGroundStationPartnerRouter groundStationPartnerRouter;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The VLAN ID for the L2 connection.
  final int vlanId;

  /// Creates a new [GetL2ConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [circuitId] Globally-unique identifier for this connection that is to be used as a circuit ID.
  /// [edgeSite] A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
  /// [groundStation] A reference to an Microsoft.Orbital/groundStations resource to route traffic for.
  /// [groundStationPartnerRouter] The name of the partner router to establish a connection to within the ground station.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vlanId] The VLAN ID for the L2 connection.
  const GetL2ConnectionResult({
    required this.azureApiVersion,
    required this.circuitId,
    required this.edgeSite,
    required this.groundStation,
    required this.groundStationPartnerRouter,
    required this.id,
    required this.location,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'circuitId': circuitId,
      'edgeSite': edgeSite.toMap(),
      'groundStation': groundStation.toMap(),
      'groundStationPartnerRouter': groundStationPartnerRouter.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vlanId': vlanId,
    };
  }

  factory GetL2ConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetL2ConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      circuitId: map['circuitId'] as String,
      edgeSite: L2ConnectionsPropertiesResponseEdgeSite.fromMap((map['edgeSite']! as Map).cast<String, dynamic>()),
      groundStation: L2ConnectionsPropertiesResponseGroundStation.fromMap((map['groundStation']! as Map).cast<String, dynamic>()),
      groundStationPartnerRouter: L2ConnectionsPropertiesResponseGroundStationPartnerRouter.fromMap((map['groundStationPartnerRouter']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}
