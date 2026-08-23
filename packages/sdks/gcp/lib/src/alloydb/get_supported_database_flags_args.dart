// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_get_supported_database_flags_get_supported_database_flags_args_doc}
/// Arguments for getSupportedDatabaseFlags.
/// {@endtemplate}
/// {@macro pulumi_alloydb_get_supported_database_flags_get_supported_database_flags_args_doc}
class GetSupportedDatabaseFlagsArgs {
  /// The canonical id of the location. For example: `us-east1`.
  final pulumi.Input<String> location;
  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetSupportedDatabaseFlagsArgs].
  /// [location] The canonical id of the location. For example: `us-east1`.
  /// [project] The ID of the project.
  const GetSupportedDatabaseFlagsArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetSupportedDatabaseFlagsArgs.fromMap(Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
