// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentLoggingStorageAccount {
  final pulumi.Input<String> containerName;
  /// The name of this NGINX Deployment.
  final pulumi.Input<String> name;

  /// Creates a new [GetDeploymentLoggingStorageAccount].
  /// [containerName] Required.
  /// [name] The name of this NGINX Deployment.
  GetDeploymentLoggingStorageAccount({
    required this.containerName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'name': name,
    };
  }

  factory GetDeploymentLoggingStorageAccount.fromMap(Map<String, dynamic> map) {
    return GetDeploymentLoggingStorageAccount(
      containerName: (map['containerName'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

