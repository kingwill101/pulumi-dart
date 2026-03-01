// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotLogsHttpLogsAzureBlobStorage {
  /// The time in days after which to remove blobs. A value of `0` means no retention.
  final int? retentionInDays;
  /// SAS url to an Azure blob container with read/write/list/delete permissions.
  ///
  /// > **Note:** There isn't enough information to for the provider to generate the `sas_url` from `data.azurerm_storage_account_sas` and it should be built by hand (i.e. `https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}${data.azurerm_storage_account_sas.example.sas}&sr=b`).
  final String sasUrl;

  /// Creates a new [WindowsWebAppSlotLogsHttpLogsAzureBlobStorage].
  /// [retentionInDays] The time in days after which to remove blobs. A value of `0` means no retention.
  /// [sasUrl] SAS url to an Azure blob container with read/write/list/delete permissions.
  WindowsWebAppSlotLogsHttpLogsAzureBlobStorage({
    this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': ?retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory WindowsWebAppSlotLogsHttpLogsAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogsHttpLogsAzureBlobStorage(
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      sasUrl: map['sasUrl'] as String,
    );
  }
}

