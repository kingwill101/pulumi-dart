// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_backup_policy_state.dart';

/// {@template pulumi_sql_geo_backup_policy_args_doc}
/// The set of arguments for GeoBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_geo_backup_policy_args_doc}
class GeoBackupPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the Geo backup policy. This should always be 'Default'.
  final pulumi.Input<String>? geoBackupPolicyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The state of the geo backup policy.
  final pulumi.Input<GeoBackupPolicyState> state;

  /// Creates a new [GeoBackupPolicyArgs].
  /// [databaseName] The name of the database.
  /// [geoBackupPolicyName] The name of the Geo backup policy. This should always be 'Default'.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [state] The state of the geo backup policy.
  GeoBackupPolicyArgs({
    required this.databaseName,
    this.geoBackupPolicyName,
    required this.resourceGroupName,
    required this.serverName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'geoBackupPolicyName': ?geoBackupPolicyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'state': pulumi.Input.mapInputValue<GeoBackupPolicyState, String>(state, (value) => value.wireValue),
    };
  }

  factory GeoBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GeoBackupPolicyArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      geoBackupPolicyName: (() { final guardedValue = map['geoBackupPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      state: pulumi.Input.fromValue(GeoBackupPolicyState.fromValue(map['state']! as String)),
    );
  }
}

