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
  GetAutonomousDatabaseCloneFromDatabaseArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutonomousDatabaseCloneFromDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseCloneFromDatabaseArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

