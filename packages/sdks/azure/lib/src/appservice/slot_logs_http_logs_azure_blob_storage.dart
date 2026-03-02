// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotLogsHttpLogsAzureBlobStorage {
  /// The number of days to retain logs for.
  final pulumi.Input<int> retentionInDays;
  /// The URL to the storage container, with a Service SAS token appended.
  ///
  /// > **Note:** There isn't enough information to for the provider to generate the `sas_url` from `data.azurerm_storage_account_sas` and it should be built by hand (i.e. `https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}${data.azurerm_storage_account_sas.example.sas}&sr=b`).
  final pulumi.Input<String> sasUrl;

  /// Creates a new [SlotLogsHttpLogsAzureBlobStorage].
  /// [retentionInDays] The number of days to retain logs for.
  /// [sasUrl] The URL to the storage container, with a Service SAS token appended.
  SlotLogsHttpLogsAzureBlobStorage({
    required this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory SlotLogsHttpLogsAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return SlotLogsHttpLogsAzureBlobStorage(
      retentionInDays: (map['retentionInDays'] as int).input(),
      sasUrl: (map['sasUrl'] as String).input(),
    );
  }
}

