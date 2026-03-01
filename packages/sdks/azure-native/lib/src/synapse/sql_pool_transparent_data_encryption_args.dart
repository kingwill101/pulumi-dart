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
  SqlPoolTransparentDataEncryptionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlPoolName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transparentDataEncryptionName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      status = pulumi.Input.asOptionalInput<String>(status),
      transparentDataEncryptionName = pulumi.Input.asOptionalInput<String>(transparentDataEncryptionName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Output.create<String>(map['sqlPoolName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transparentDataEncryptionName: map['transparentDataEncryptionName'] == null ? null : pulumi.Output.create<String>(map['transparentDataEncryptionName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

