// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_transfer_spec_azure_blob_storage_data_source_azure_credentials.dart';
import 'transfer_job_transfer_spec_azure_blob_storage_data_source_federated_identity_config.dart';

class TransferJobTransferSpecAzureBlobStorageDataSource {
  /// ) Credentials used to authenticate API requests to Azure block.
  final pulumi.Input<TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials>? azureCredentials;
  /// The container to transfer from the Azure Storage account.`
  final pulumi.Input<String> container;
  /// ) Full Resource name of a secret in Secret Manager containing [SAS Credentials in JSON form](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#azureblobstoragedata:~:text=begin%20with%20a%20%27/%27.-,credentialsSecret,-string). Service Agent for Storage Transfer must have permissions to access secret. If credentials_secret is specified, do not specify azure_credentials.`,
  final pulumi.Input<String>? credentialsSecret;
  /// Federated identity config of a user registered Azure application. Structure documented below.
  final pulumi.Input<TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig>? federatedIdentityConfig;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final pulumi.Input<String>? path;
  /// The name of the Azure Storage account.
  final pulumi.Input<String> storageAccount;

  /// Creates a new [TransferJobTransferSpecAzureBlobStorageDataSource].
  /// [azureCredentials] ) Credentials used to authenticate API requests to Azure block.
  /// [container] The container to transfer from the Azure Storage account.`
  /// [credentialsSecret] ) Full Resource name of a secret in Secret Manager containing [SAS Credentials in JSON form](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#azureblobstoragedata:~:text=begin%20with%20a%20%27/%27.-,credentialsSecret,-string). Service Agent for Storage Transfer must have permissions to access secret. If credentials_secret is specified, do not specify azure_credentials.`,
  /// [federatedIdentityConfig] Federated identity config of a user registered Azure application. Structure documented below.
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  /// [storageAccount] The name of the Azure Storage account.
  const TransferJobTransferSpecAzureBlobStorageDataSource({
    this.azureCredentials,
    required this.container,
    this.credentialsSecret,
    this.federatedIdentityConfig,
    this.path,
    required this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureCredentials': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials, Map<String, dynamic>>(azureCredentials, (value) => value.toMap()),
      'container': container,
      'credentialsSecret': ?credentialsSecret,
      'federatedIdentityConfig': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig, Map<String, dynamic>>(federatedIdentityConfig, (value) => value.toMap()),
      'path': ?path,
      'storageAccount': storageAccount,
    };
  }

  factory TransferJobTransferSpecAzureBlobStorageDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecAzureBlobStorageDataSource(
      azureCredentials: (() { final guardedValue = map['azureCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      container: pulumi.Input.fromValue(map['container'] as String),
      credentialsSecret: (() { final guardedValue = map['credentialsSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      federatedIdentityConfig: (() { final guardedValue = map['federatedIdentityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccount: pulumi.Input.fromValue(map['storageAccount'] as String),
    );
  }
}

