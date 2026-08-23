// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_credentials.dart';

/// An AzureBlobStorageData resource can be a data source, but not a data sink. An AzureBlobStorageData resource represents one Azure container. The storage account determines the [Azure endpoint](https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account#storage-account-endpoints). In an AzureBlobStorageData resource, a blobs's name is the [Azure Blob Storage blob's key name](https://docs.microsoft.com/en-us/rest/api/storageservices/naming-and-referencing-containers--blobs--and-metadata#blob-names).
class AzureBlobStorageData {
  /// Input only. Credentials used to authenticate API requests to Azure. For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
  final pulumi.Input<AzureCredentials> azureCredentials;
  /// The container to transfer from the Azure Storage account.
  final pulumi.Input<String> container;
  /// Optional. The Resource name of a secret in Secret Manager. The Azure SAS token must be stored in Secret Manager in JSON format: { "sas_token" : "SAS_TOKEN" } GoogleServiceAccount must be granted `roles/secretmanager.secretAccessor` for the resource. See [Configure access to a source: Microsoft Azure Blob Storage] (https://cloud.google.com/storage-transfer/docs/source-microsoft-azure#secret_manager) for more information. If `credentials_secret` is specified, do not specify azure_credentials. This feature is in [preview](https://cloud.google.com/terms/service-terms#1). Format: `projects/{project_number}/secrets/{secret_name}`
  final pulumi.Input<String>? credentialsSecret;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final pulumi.Input<String>? path;
  /// The name of the Azure Storage account.
  final pulumi.Input<String> storageAccount;

  /// Creates a new [AzureBlobStorageData].
  /// [azureCredentials] Input only. Credentials used to authenticate API requests to Azure. For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
  /// [container] The container to transfer from the Azure Storage account.
  /// [credentialsSecret] Optional. The Resource name of a secret in Secret Manager. The Azure SAS token must be stored in Secret Manager in JSON format: { "sas_token" : "SAS_TOKEN" } GoogleServiceAccount must be granted `roles/secretmanager.secretAccessor` for the resource. See [Configure access to a source: Microsoft Azure Blob Storage] (https://cloud.google.com/storage-transfer/docs/source-microsoft-azure#secret_manager) for more information. If `credentials_secret` is specified, do not specify azure_credentials. This feature is in [preview](https://cloud.google.com/terms/service-terms#1). Format: `projects/{project_number}/secrets/{secret_name}`
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  /// [storageAccount] The name of the Azure Storage account.
  const AzureBlobStorageData({
    required this.azureCredentials,
    required this.container,
    this.credentialsSecret,
    this.path,
    required this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureCredentials': pulumi.Input.mapInputValue<AzureCredentials, Map<String, dynamic>>(azureCredentials, (value) => value.toMap()),
      'container': container,
      'credentialsSecret': ?credentialsSecret,
      'path': ?path,
      'storageAccount': storageAccount,
    };
  }

  factory AzureBlobStorageData.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageData(
      azureCredentials: pulumi.Input.fromValue(AzureCredentials.fromMap((map['azureCredentials']! as Map).cast<String, dynamic>())),
      container: pulumi.Input.fromValue(map['container'] as String),
      credentialsSecret: (() { final guardedValue = map['credentialsSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccount: pulumi.Input.fromValue(map['storageAccount'] as String),
    );
  }
}
