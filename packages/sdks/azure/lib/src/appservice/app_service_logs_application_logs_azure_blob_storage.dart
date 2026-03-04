// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceLogsApplicationLogsAzureBlobStorage {
  /// The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  final pulumi.Input<String> level;

  /// The number of days to retain logs for.
  final pulumi.Input<int> retentionInDays;

  /// The URL to the storage container with a shared access signature token appended.
  ///
  /// &gt; **Note:** There isn't enough information to for the provider to generate the `sas_url` from `data.azurerm_storage_account_sas` and it should be built by hand (i.e. `https://${azurerm_storage_account.example.name}.blob.core.windows.net/${azurerm_storage_container.example.name}${data.azurerm_storage_account_sas.example.sas}&sr=b`).
  final pulumi.Input<String> sasUrl;

  /// Creates a new [AppServiceLogsApplicationLogsAzureBlobStorage].
  /// [level] The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  /// [retentionInDays] The number of days to retain logs for.
  /// [sasUrl] The URL to the storage container with a shared access signature token appended.
  AppServiceLogsApplicationLogsAzureBlobStorage({
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

  factory AppServiceLogsApplicationLogsAzureBlobStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppServiceLogsApplicationLogsAzureBlobStorage(
      level: pulumi.Input.fromValue(map['level'] as String),
      retentionInDays: pulumi.Input.fromValue(map['retentionInDays'] as int),
      sasUrl: pulumi.Input.fromValue(map['sasUrl'] as String),
    );
  }
}
