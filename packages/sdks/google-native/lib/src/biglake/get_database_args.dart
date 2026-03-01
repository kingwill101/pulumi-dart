// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_v1_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_get_database_args_doc}
class GetDatabaseArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseArgs].
  /// [catalogId] Required.
  /// [databaseId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDatabaseArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> databaseId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseId': databaseId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

