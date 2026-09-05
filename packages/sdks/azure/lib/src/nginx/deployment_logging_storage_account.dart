// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentLoggingStorageAccount {
  final pulumi.Input<String?>? containerName;
  /// The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [DeploymentLoggingStorageAccount].
  /// [containerName] Optional.
  /// [name] The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  const DeploymentLoggingStorageAccount({
    this.containerName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'name': ?name,
    };
  }

  factory DeploymentLoggingStorageAccount.fromMap(Map<String, dynamic> map) {
    return DeploymentLoggingStorageAccount(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
