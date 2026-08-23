// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotLogsApplicationLogsAzureBlobStorage {
  /// The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `httpLogs`
  final pulumi.Input<String> level;
  /// The number of days to retain logs for.
  final pulumi.Input<int> retentionInDays;
  /// The URL to the storage container, with a Service SAS token appended.
  ///
  /// &gt; **Note:** There isn't enough information to for the provider to generate the `sasUrl` from `data.azurerm_storage_account_sas` and it should be built by hand (i.e. `https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}${data.azurerm_storage_account_sas.example.sas}&sr=b`).
  final pulumi.Input<String> sasUrl;

  /// Creates a new [SlotLogsApplicationLogsAzureBlobStorage].
  /// [level] The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `httpLogs`
  /// [retentionInDays] The number of days to retain logs for.
  /// [sasUrl] The URL to the storage container, with a Service SAS token appended.
  const SlotLogsApplicationLogsAzureBlobStorage({
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
      level: pulumi.Input.fromValue(map['level'] as String),
      retentionInDays: pulumi.Input.fromValue(map['retentionInDays'] as int),
      sasUrl: pulumi.Input.fromValue(map['sasUrl'] as String),
    );
  }
}
