// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment_authentication.dart';

/// Storage for deployed package used by the function app.
class FunctionsDeploymentStorage {
  /// Authentication method to access the storage account for deployment.
  final pulumi.Input<FunctionsDeploymentAuthentication>? authentication;

  /// Property to select Azure Storage type. Available options: blobContainer.
  final pulumi.Input<String>? type;

  /// Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://&lt;storageAccountName&gt;.blob.core.windows.net/&lt;containerName&gt;.
  final pulumi.Input<String>? value;

  /// Creates a new [FunctionsDeploymentStorage].
  /// [authentication] Authentication method to access the storage account for deployment.
  /// [type] Property to select Azure Storage type. Available options: blobContainer.
  /// [value] Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://&lt;storageAccountName&gt;.blob.core.windows.net/&lt;containerName&gt;.
  FunctionsDeploymentStorage({this.authentication, this.type, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionsDeploymentAuthentication,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
    };
  }

  factory FunctionsDeploymentStorage.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentStorage(
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionsDeploymentAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
