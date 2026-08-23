// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_autonomous_database_clone_from_database_get_autonomous_database_clone_from_database_args_doc}
/// Arguments for getAutonomousDatabaseCloneFromDatabase.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_autonomous_database_clone_from_database_get_autonomous_database_clone_from_database_args_doc}
class GetAutonomousDatabaseCloneFromDatabaseArgs {
  /// The name of this autonomous database clone from database.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the autonomous database cloned from database exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutonomousDatabaseCloneFromDatabaseArgs].
  /// [name] The name of this autonomous database clone from database.
  /// [resourceGroupName] The name of the Resource Group where the autonomous database cloned from database exists.
  const GetAutonomousDatabaseCloneFromDatabaseArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutonomousDatabaseCloneFromDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseCloneFromDatabaseArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
