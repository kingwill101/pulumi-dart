// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_odb_subnet_get_odb_subnet_args_doc}
/// Arguments for getOdbSubnet.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_odb_subnet_get_odb_subnet_args_doc}
class GetOdbSubnetArgs {
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the ODB Subnet.
  final pulumi.Input<String> odbSubnetId;
  /// The ID of the parent ODB Network.
  final pulumi.Input<String> odbnetwork;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetOdbSubnetArgs].
  /// [location] The location of the resource.
  /// [odbSubnetId] The ID of the ODB Subnet.
  /// [odbnetwork] The ID of the parent ODB Network.
  /// [project] The project to which the resource belongs. If it
  const GetOdbSubnetArgs({
    required this.location,
    required this.odbSubnetId,
    required this.odbnetwork,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'odbSubnetId': odbSubnetId,
      'odbnetwork': odbnetwork,
      'project': ?project,
    };
  }

  factory GetOdbSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetOdbSubnetArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      odbSubnetId: pulumi.Input.fromValue(map['odbSubnetId'] as String),
      odbnetwork: pulumi.Input.fromValue(map['odbnetwork'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
