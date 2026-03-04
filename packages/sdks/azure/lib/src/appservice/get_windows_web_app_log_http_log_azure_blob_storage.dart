// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppLogHttpLogAzureBlobStorage {
  /// The retention period in days.
  final pulumi.Input<int> retentionInDays;

  /// The SAS url to the Azure Blob container.
  final pulumi.Input<String> sasUrl;

  /// Creates a new [GetWindowsWebAppLogHttpLogAzureBlobStorage].
  /// [retentionInDays] The retention period in days.
  /// [sasUrl] The SAS url to the Azure Blob container.
  GetWindowsWebAppLogHttpLogAzureBlobStorage({
    required this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory GetWindowsWebAppLogHttpLogAzureBlobStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWindowsWebAppLogHttpLogAzureBlobStorage(
      retentionInDays: pulumi.Input.fromValue(map['retentionInDays'] as int),
      sasUrl: pulumi.Input.fromValue(map['sasUrl'] as String),
    );
  }
}
