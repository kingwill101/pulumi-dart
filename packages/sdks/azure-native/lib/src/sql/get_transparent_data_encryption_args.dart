// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_transparent_data_encryption_args_doc}
/// Arguments for getTransparentDataEncryption.
/// {@endtemplate}
/// {@macro pulumi_sql_get_transparent_data_encryption_args_doc}
class GetTransparentDataEncryptionArgs {
  /// The name of the logical database for which the transparent data encryption is defined.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the transparent data encryption configuration.
  final pulumi.Input<String> tdeName;

  /// Creates a new [GetTransparentDataEncryptionArgs].
  /// [databaseName] The name of the logical database for which the transparent data encryption is defined.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [tdeName] The name of the transparent data encryption configuration.
  GetTransparentDataEncryptionArgs({
    required this.databaseName,
    required this.resourceGroupName,
    required this.serverName,
    required this.tdeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'tdeName': tdeName,
    };
  }

  factory GetTransparentDataEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return GetTransparentDataEncryptionArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      tdeName: pulumi.Input.fromValue(map['tdeName'] as String),
    );
  }
}

