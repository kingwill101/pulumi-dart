// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDeploymentScriptAzureCliStorageAccount {
  /// Specifies the storage account access key.
  final pulumi.Input<String> key;
  /// Specifies the storage account name.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceDeploymentScriptAzureCliStorageAccount].
  /// [key] Specifies the storage account access key.
  /// [name] Specifies the storage account name.
  ResourceDeploymentScriptAzureCliStorageAccount({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory ResourceDeploymentScriptAzureCliStorageAccount.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptAzureCliStorageAccount(
      key: (map['key'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

