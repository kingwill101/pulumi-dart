// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDeploymentScriptPowerShellStorageAccount {
  /// Specifies the storage account access key.
  final pulumi.Input<String> key;
  /// Specifies the storage account name.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceDeploymentScriptPowerShellStorageAccount].
  /// [key] Specifies the storage account access key.
  /// [name] Specifies the storage account name.
  const ResourceDeploymentScriptPowerShellStorageAccount({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory ResourceDeploymentScriptPowerShellStorageAccount.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptPowerShellStorageAccount(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

