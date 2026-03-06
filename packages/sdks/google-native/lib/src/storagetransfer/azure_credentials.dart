// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure credentials For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
class AzureCredentials {
  /// Azure shared access signature (SAS). For more information about SAS, see [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  final pulumi.Input<String> sasToken;

  /// Creates a new [AzureCredentials].
  /// [sasToken] Azure shared access signature (SAS). For more information about SAS, see [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  const AzureCredentials({
    required this.sasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasToken': sasToken,
    };
  }

  factory AzureCredentials.fromMap(Map<String, dynamic> map) {
    return AzureCredentials(
      sasToken: pulumi.Input.fromValue(map['sasToken'] as String),
    );
  }
}

