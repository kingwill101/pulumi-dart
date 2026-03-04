// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials {
  /// Azure shared access signature. See [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  final pulumi.Input<String> sasToken;

  /// Creates a new [TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials].
  /// [sasToken] Azure shared access signature. See [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials({
    required this.sasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sasToken': sasToken};
  }

  factory TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return TransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials(
      sasToken: pulumi.Input.fromValue(map['sasToken'] as String),
    );
  }
}
