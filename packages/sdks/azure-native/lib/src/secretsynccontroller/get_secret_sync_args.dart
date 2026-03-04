// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsynccontroller_get_secret_sync_args_doc}
/// Arguments for getSecretSync.
/// {@endtemplate}
/// {@macro pulumi_secretsynccontroller_get_secret_sync_args_doc}
class GetSecretSyncArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the SecretSync
  final pulumi.Input<String> secretSyncName;

  /// Creates a new [GetSecretSyncArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secretSyncName] The name of the SecretSync
  GetSecretSyncArgs({
    required this.resourceGroupName,
    required this.secretSyncName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'secretSyncName': secretSyncName,
    };
  }

  factory GetSecretSyncArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretSyncArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      secretSyncName: pulumi.Input.fromValue(map['secretSyncName'] as String),
    );
  }
}
