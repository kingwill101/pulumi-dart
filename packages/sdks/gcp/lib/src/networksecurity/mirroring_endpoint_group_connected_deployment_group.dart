// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_endpoint_group_connected_deployment_group_location.dart';

class MirroringEndpointGroupConnectedDeploymentGroup {
  /// (Output)
  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  final pulumi.Input<List<MirroringEndpointGroupConnectedDeploymentGroupLocation>>? locations;
  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? name;

  /// Creates a new [MirroringEndpointGroupConnectedDeploymentGroup].
  /// [locations] (Output)
  /// [name] (Output)
  MirroringEndpointGroupConnectedDeploymentGroup({
    this.locations,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?pulumi.Input.mapOptionalInputValue<List<MirroringEndpointGroupConnectedDeploymentGroupLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<MirroringEndpointGroupConnectedDeploymentGroupLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory MirroringEndpointGroupConnectedDeploymentGroup.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointGroupConnectedDeploymentGroup(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MirroringEndpointGroupConnectedDeploymentGroupLocation>(guardedValue, (value) => MirroringEndpointGroupConnectedDeploymentGroupLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

