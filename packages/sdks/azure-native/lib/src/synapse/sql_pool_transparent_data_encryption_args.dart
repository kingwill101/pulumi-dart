// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_transparent_data_encryption_args_doc}
/// The set of arguments for SqlPoolTransparentDataEncryption.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_transparent_data_encryption_args_doc}
class SqlPoolTransparentDataEncryptionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The status of the database transparent data encryption.
  final pulumi.Input<String>? status;
  /// The name of the transparent data encryption configuration.
  final pulumi.Input<String>? transparentDataEncryptionName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SqlPoolTransparentDataEncryptionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [status] The status of the database transparent data encryption.
  /// [transparentDataEncryptionName] The name of the transparent data encryption configuration.
  /// [workspaceName] The name of the workspace.
  const SqlPoolTransparentDataEncryptionArgs({
    required this.resourceGroupName,
    required this.sqlPoolName,
    this.status,
    this.transparentDataEncryptionName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'status': ?status,
      'transparentDataEncryptionName': ?transparentDataEncryptionName,
      'workspaceName': workspaceName,
    };
  }

  factory SqlPoolTransparentDataEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolTransparentDataEncryptionArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Input.fromValue(map['sqlPoolName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentDataEncryptionName: (() { final guardedValue = map['transparentDataEncryptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
