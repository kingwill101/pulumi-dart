// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppLogApplicationLogAzureBlobStorage {
  /// The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `httpLogs`
  final pulumi.Input<String> level;
  /// The retention period in days.
  final pulumi.Input<int> retentionInDays;
  /// The SAS url to the Azure Blob container.
  final pulumi.Input<String> sasUrl;

  /// Creates a new [GetWindowsWebAppLogApplicationLogAzureBlobStorage].
  /// [level] The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `httpLogs`
  /// [retentionInDays] The retention period in days.
  /// [sasUrl] The SAS url to the Azure Blob container.
  const GetWindowsWebAppLogApplicationLogAzureBlobStorage({
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

  factory GetWindowsWebAppLogApplicationLogAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLogApplicationLogAzureBlobStorage(
      level: pulumi.Input.fromValue(map['level'] as String),
      retentionInDays: pulumi.Input.fromValue((map['retentionInDays'] as num).toInt()),
      sasUrl: pulumi.Input.fromValue(map['sasUrl'] as String),
    );
  }
}
