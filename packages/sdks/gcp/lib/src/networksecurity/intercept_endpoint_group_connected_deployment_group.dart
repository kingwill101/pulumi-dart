// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_endpoint_group_connected_deployment_group_location.dart';

class InterceptEndpointGroupConnectedDeploymentGroup {
  /// (Output)
  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  final pulumi.Input<
    List<InterceptEndpointGroupConnectedDeploymentGroupLocation>
  >?
  locations;

  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? name;

  /// Creates a new [InterceptEndpointGroupConnectedDeploymentGroup].
  /// [locations] (Output)
  /// [name] (Output)
  InterceptEndpointGroupConnectedDeploymentGroup({this.locations, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations':
          ?pulumi.Input.mapOptionalInputValue<
            List<InterceptEndpointGroupConnectedDeploymentGroupLocation>,
            List<Map<String, dynamic>>
          >(
            locations,
            (value) =>
                pulumi.Input.encodeList<
                  InterceptEndpointGroupConnectedDeploymentGroupLocation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
    };
  }

  factory InterceptEndpointGroupConnectedDeploymentGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterceptEndpointGroupConnectedDeploymentGroup(
      locations: (() {
        final guardedValue = map['locations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InterceptEndpointGroupConnectedDeploymentGroupLocation
          >(
            guardedValue,
            (value) =>
                InterceptEndpointGroupConnectedDeploymentGroupLocation.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
