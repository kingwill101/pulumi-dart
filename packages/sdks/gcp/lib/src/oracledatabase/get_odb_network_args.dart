// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_odb_network_get_odb_network_args_doc}
/// Arguments for getOdbNetwork.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_odb_network_get_odb_network_args_doc}
class GetOdbNetworkArgs {
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the ODB Network.
  final pulumi.Input<String> odbNetworkId;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetOdbNetworkArgs].
  /// [location] The location of the resource.
  /// [odbNetworkId] The ID of the ODB Network.
  /// [project] The project to which the resource belongs. If it
  const GetOdbNetworkArgs({
    required this.location,
    required this.odbNetworkId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'odbNetworkId': odbNetworkId,
      'project': ?project,
    };
  }

  factory GetOdbNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetOdbNetworkArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      odbNetworkId: pulumi.Input.fromValue(map['odbNetworkId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
