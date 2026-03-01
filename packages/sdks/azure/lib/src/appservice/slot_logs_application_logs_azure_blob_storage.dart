// ignore_for_file: unused_element, unnecessary_cast


class SlotLogsApplicationLogsAzureBlobStorage {
  /// The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  final String level;
  /// The number of days to retain logs for.
  final int retentionInDays;
  /// The URL to the storage container, with a Service SAS token appended.
  ///
  /// > **Note:** There isn't enough information to for the provider to generate the `sas_url` from `data.azurerm_storage_account_sas` and it should be built by hand (i.e. `https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}${data.azurerm_storage_account_sas.example.sas}&sr=b`).
  final String sasUrl;

  /// Creates a new [SlotLogsApplicationLogsAzureBlobStorage].
  /// [level] The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  /// [retentionInDays] The number of days to retain logs for.
  /// [sasUrl] The URL to the storage container, with a Service SAS token appended.
  SlotLogsApplicationLogsAzureBlobStorage({
    required this.level,
    required this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'retentionInDays': retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory SlotLogsApplicationLogsAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return SlotLogsApplicationLogsAzureBlobStorage(
      level: map['level'] as String,
      retentionInDays: map['retentionInDays'] as int,
      sasUrl: map['sasUrl'] as String,
    );
  }
}

