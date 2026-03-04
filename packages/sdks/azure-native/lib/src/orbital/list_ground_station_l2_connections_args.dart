// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_list_ground_station_l2_connections_args_doc}
/// Arguments for listGroundStationL2Connections.
/// {@endtemplate}
/// {@macro pulumi_orbital_list_ground_station_l2_connections_args_doc}
class ListGroundStationL2ConnectionsArgs {
  /// Ground Station name.
  final pulumi.Input<String> groundStationName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListGroundStationL2ConnectionsArgs].
  /// [groundStationName] Ground Station name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListGroundStationL2ConnectionsArgs({
    required this.groundStationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groundStationName': groundStationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListGroundStationL2ConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ListGroundStationL2ConnectionsArgs(
      groundStationName: pulumi.Input.fromValue(
        map['groundStationName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
