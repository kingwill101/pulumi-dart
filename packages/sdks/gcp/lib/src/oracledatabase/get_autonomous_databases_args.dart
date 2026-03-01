// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_autonomous_databases_get_autonomous_databases_args_doc}
/// Arguments for getAutonomousDatabases.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_autonomous_databases_get_autonomous_databases_args_doc}
class GetAutonomousDatabasesArgs {
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutonomousDatabasesArgs].
  /// [location] The location of the resource.
  /// [project] The project to which the resource belongs. If it
  GetAutonomousDatabasesArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetAutonomousDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

