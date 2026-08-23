// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_db_servers_get_db_servers_args_doc}
/// Arguments for getDbServers.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_db_servers_get_db_servers_args_doc}
class GetDbServersArgs {
  /// The Exadata Infrastructure id.
  final pulumi.Input<String> cloudExadataInfrastructure;
  /// The location of resource.
  final pulumi.Input<String> location;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDbServersArgs].
  /// [cloudExadataInfrastructure] The Exadata Infrastructure id.
  /// [location] The location of resource.
  /// [project] The project to which the resource belongs. If it
  const GetDbServersArgs({
    required this.cloudExadataInfrastructure,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructure': cloudExadataInfrastructure,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDbServersArgs.fromMap(Map<String, dynamic> map) {
    return GetDbServersArgs(
      cloudExadataInfrastructure: pulumi.Input.fromValue(map['cloudExadataInfrastructure'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
