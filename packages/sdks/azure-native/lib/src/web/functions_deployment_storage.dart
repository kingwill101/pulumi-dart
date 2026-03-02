// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment_authentication.dart';

/// Storage for deployed package used by the function app.
class FunctionsDeploymentStorage {
  /// Authentication method to access the storage account for deployment.
  final pulumi.Input<FunctionsDeploymentAuthentication>? authentication;
  /// Property to select Azure Storage type. Available options: blobContainer.
  final pulumi.Input<String>? type;
  /// Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://<storageAccountName>.blob.core.windows.net/<containerName>.
  final pulumi.Input<String>? value;

  /// Creates a new [FunctionsDeploymentStorage].
  /// [authentication] Authentication method to access the storage account for deployment.
  /// [type] Property to select Azure Storage type. Available options: blobContainer.
  /// [value] Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://<storageAccountName>.blob.core.windows.net/<containerName>.
  FunctionsDeploymentStorage({
    this.authentication,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FunctionsDeploymentAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
    };
  }

  factory FunctionsDeploymentStorage.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentStorage(
      authentication: map['authentication'] == null ? null : (FunctionsDeploymentAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

