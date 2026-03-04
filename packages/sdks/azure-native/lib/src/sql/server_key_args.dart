// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_server_key_args_doc}
/// The set of arguments for ServerKey.
/// {@endtemplate}
/// {@macro pulumi_sql_server_key_args_doc}
class ServerKeyArgs {
  /// The name of the server key to be operated on (updated or created). The key name is required to be in the format of 'vault_key_version'. For example, if the keyId is https://YourVaultName.vault.azure.net/keys/YourKeyName/YourKeyVersion, then the server key name should be formatted as: YourVaultName_YourKeyName_YourKeyVersion
  final pulumi.Input<String>? keyName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The server key type like 'ServiceManaged', 'AzureKeyVault'.
  final pulumi.Input<String> serverKeyType;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// The URI of the server key. If the ServerKeyType is AzureKeyVault, then the URI is required. The AKV URI is required to be in this format: 'https://YourVaultName.vault.azure.net/keys/YourKeyName/YourKeyVersion'
  final pulumi.Input<String>? uri;

  /// Creates a new [ServerKeyArgs].
  /// [keyName] The name of the server key to be operated on (updated or created). The key name is required to be in the format of 'vault_key_version'. For example, if the keyId is https://YourVaultName.vault.azure.net/keys/YourKeyName/YourKeyVersion, then the server key name should be formatted as: YourVaultName_YourKeyName_YourKeyVersion
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverKeyType] The server key type like 'ServiceManaged', 'AzureKeyVault'.
  /// [serverName] The name of the server.
  /// [uri] The URI of the server key. If the ServerKeyType is AzureKeyVault, then the URI is required. The AKV URI is required to be in this format: 'https://YourVaultName.vault.azure.net/keys/YourKeyName/YourKeyVersion'
  ServerKeyArgs({
    this.keyName,
    required this.resourceGroupName,
    required this.serverKeyType,
    required this.serverName,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'resourceGroupName': resourceGroupName,
      'serverKeyType': serverKeyType,
      'serverName': serverName,
      'uri': ?uri,
    };
  }

  factory ServerKeyArgs.fromMap(Map<String, dynamic> map) {
    return ServerKeyArgs(
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverKeyType: pulumi.Input.fromValue(map['serverKeyType'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
