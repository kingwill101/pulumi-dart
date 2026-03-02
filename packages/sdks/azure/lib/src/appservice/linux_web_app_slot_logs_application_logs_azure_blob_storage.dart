// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage {
  /// The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  final pulumi.Input<String> level;
  /// The time in days after which to remove blobs. A value of `0` means no retention.
  final pulumi.Input<int> retentionInDays;
  /// SAS URL to an Azure blob container with read/write/list/delete permissions.
  ///
  /// > **Note:** There isn't enough information to for the provider to generate the `sas_url` from `data.azurerm_storage_account_sas` and it should be built by hand (i.e. `https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}${data.azurerm_storage_account_sas.example.sas}&sr=b`).
  final pulumi.Input<String> sasUrl;

  /// Creates a new [LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage].
  /// [level] The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  /// [retentionInDays] The time in days after which to remove blobs. A value of `0` means no retention.
  /// [sasUrl] SAS URL to an Azure blob container with read/write/list/delete permissions.
  LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage({
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

  factory LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage(
      level: (map['level'] as String).input(),
      retentionInDays: (map['retentionInDays'] as int).input(),
      sasUrl: (map['sasUrl'] as String).input(),
    );
  }
}

