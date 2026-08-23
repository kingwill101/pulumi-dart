// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment_storage_authentication_response.dart';

/// Storage for deployed package used by the function app.
class FunctionsDeploymentStorageResponse {
  /// Authentication method to access the storage account for deployment.
  final pulumi.Input<FunctionsDeploymentStorageAuthenticationResponse>? authentication;
  /// Property to select Azure Storage type. Available options: blobContainer.
  final pulumi.Input<String>? type;
  /// Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://&lt;storageAccountName&gt;.blob.core.windows.net/&lt;containerName&gt;.
  final pulumi.Input<String>? value;

  /// Creates a new [FunctionsDeploymentStorageResponse].
  /// [authentication] Authentication method to access the storage account for deployment.
  /// [type] Property to select Azure Storage type. Available options: blobContainer.
  /// [value] Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://&lt;storageAccountName&gt;.blob.core.windows.net/&lt;containerName&gt;.
  const FunctionsDeploymentStorageResponse({
    this.authentication,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FunctionsDeploymentStorageAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
    };
  }

  factory FunctionsDeploymentStorageResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentStorageResponse(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsDeploymentStorageAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
