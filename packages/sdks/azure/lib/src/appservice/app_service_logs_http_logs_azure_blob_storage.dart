// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceLogsHttpLogsAzureBlobStorage {
  /// The number of days to retain logs for.
  final pulumi.Input<int> retentionInDays;

  /// The URL to the storage container with a shared access signature token appended.
  ///
  /// &gt; **Note:** There isn't enough information to for the provider to generate the `sas_url` from `data.azurerm_storage_account_sas` and it should be built by hand (i.e. `https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}${data.azurerm_storage_account_sas.example.sas}&sr=b`).
  final pulumi.Input<String> sasUrl;

  /// Creates a new [AppServiceLogsHttpLogsAzureBlobStorage].
  /// [retentionInDays] The number of days to retain logs for.
  /// [sasUrl] The URL to the storage container with a shared access signature token appended.
  AppServiceLogsHttpLogsAzureBlobStorage({
    required this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory AppServiceLogsHttpLogsAzureBlobStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppServiceLogsHttpLogsAzureBlobStorage(
      retentionInDays: pulumi.Input.fromValue(map['retentionInDays'] as int),
      sasUrl: pulumi.Input.fromValue(map['sasUrl'] as String),
    );
  }
}
