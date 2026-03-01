// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_sql_pool_transparent_data_encryption_args_doc}
/// Arguments for getSqlPoolTransparentDataEncryption.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_sql_pool_transparent_data_encryption_args_doc}
class GetSqlPoolTransparentDataEncryptionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the transparent data encryption configuration.
  final pulumi.Input<String> transparentDataEncryptionName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSqlPoolTransparentDataEncryptionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [transparentDataEncryptionName] The name of the transparent data encryption configuration.
  /// [workspaceName] The name of the workspace.
  GetSqlPoolTransparentDataEncryptionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlPoolName,
    required pulumi.Output<String> transparentDataEncryptionName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      transparentDataEncryptionName = pulumi.Input.asInput<String>(transparentDataEncryptionName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'transparentDataEncryptionName': transparentDataEncryptionName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSqlPoolTransparentDataEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolTransparentDataEncryptionArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Output.create<String>(map['sqlPoolName'] as String),
      transparentDataEncryptionName: pulumi.Output.create<String>(map['transparentDataEncryptionName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

