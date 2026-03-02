// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_ground_station_args_doc}
/// Arguments for getGroundStation.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_ground_station_args_doc}
class GetGroundStationArgs {
  /// Ground Station name.
  final pulumi.Input<String> groundStationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGroundStationArgs].
  /// [groundStationName] Ground Station name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGroundStationArgs({
    required this.groundStationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groundStationName': groundStationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGroundStationArgs.fromMap(Map<String, dynamic> map) {
    return GetGroundStationArgs(
      groundStationName: (map['groundStationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

