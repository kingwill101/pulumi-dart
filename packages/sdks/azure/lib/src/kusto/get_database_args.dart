// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_database_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_database_get_database_args_doc}
class GetDatabaseArgs {
  /// The name of the Kusto Cluster this database is added to.
  final pulumi.Input<String> clusterName;
  /// The name of the Kusto Database.
  final pulumi.Input<String> name;
  /// The Resource Group where the Kusto Database exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabaseArgs].
  /// [clusterName] The name of the Kusto Cluster this database is added to.
  /// [name] The name of the Kusto Database.
  /// [resourceGroupName] The Resource Group where the Kusto Database exists.
  GetDatabaseArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

