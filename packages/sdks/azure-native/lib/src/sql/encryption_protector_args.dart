// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_encryption_protector_args_doc}
/// The set of arguments for EncryptionProtector.
/// {@endtemplate}
/// {@macro pulumi_sql_encryption_protector_args_doc}
class EncryptionProtectorArgs {
  /// Key auto rotation opt-in flag. Either true or false.
  final pulumi.Input<bool>? autoRotationEnabled;
  /// The name of the encryption protector to be updated.
  final pulumi.Input<String>? encryptionProtectorName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server key.
  final pulumi.Input<String>? serverKeyName;
  /// The encryption protector type like 'ServiceManaged', 'AzureKeyVault'.
  final pulumi.Input<String> serverKeyType;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [EncryptionProtectorArgs].
  /// [autoRotationEnabled] Key auto rotation opt-in flag. Either true or false.
  /// [encryptionProtectorName] The name of the encryption protector to be updated.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverKeyName] The name of the server key.
  /// [serverKeyType] The encryption protector type like 'ServiceManaged', 'AzureKeyVault'.
  /// [serverName] The name of the server.
  EncryptionProtectorArgs({
    this.autoRotationEnabled,
    this.encryptionProtectorName,
    required this.resourceGroupName,
    this.serverKeyName,
    required this.serverKeyType,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': ?autoRotationEnabled,
      'encryptionProtectorName': ?encryptionProtectorName,
      'resourceGroupName': resourceGroupName,
      'serverKeyName': ?serverKeyName,
      'serverKeyType': serverKeyType,
      'serverName': serverName,
    };
  }

  factory EncryptionProtectorArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionProtectorArgs(
      autoRotationEnabled: map['autoRotationEnabled'] == null ? null : (map['autoRotationEnabled'] as bool).input(),
      encryptionProtectorName: map['encryptionProtectorName'] == null ? null : (map['encryptionProtectorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverKeyName: map['serverKeyName'] == null ? null : (map['serverKeyName'] as String).input(),
      serverKeyType: (map['serverKeyType'] as String).input(),
      serverName: (map['serverName'] as String).input(),
    );
  }
}

