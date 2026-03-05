// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_autonomous_database_get_autonomous_database_args_doc}
/// Arguments for getAutonomousDatabase.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_autonomous_database_get_autonomous_database_args_doc}
class GetAutonomousDatabaseArgs {
  /// The name of this Autonomous Database.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Autonomous Database exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutonomousDatabaseArgs].
  /// [name] The name of this Autonomous Database.
  /// [resourceGroupName] The name of the Resource Group where the Autonomous Database exists.
  GetAutonomousDatabaseArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutonomousDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

