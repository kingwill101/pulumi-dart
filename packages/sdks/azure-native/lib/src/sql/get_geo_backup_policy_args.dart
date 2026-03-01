// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_geo_backup_policy_args_doc}
/// Arguments for getGeoBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_geo_backup_policy_args_doc}
class GetGeoBackupPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the Geo backup policy. This should always be 'Default'.
  final pulumi.Input<String> geoBackupPolicyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetGeoBackupPolicyArgs].
  /// [databaseName] The name of the database.
  /// [geoBackupPolicyName] The name of the Geo backup policy. This should always be 'Default'.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetGeoBackupPolicyArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> geoBackupPolicyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      geoBackupPolicyName = pulumi.Input.asInput<String>(geoBackupPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'geoBackupPolicyName': geoBackupPolicyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetGeoBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGeoBackupPolicyArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      geoBackupPolicyName: pulumi.Output.create<String>(map['geoBackupPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

