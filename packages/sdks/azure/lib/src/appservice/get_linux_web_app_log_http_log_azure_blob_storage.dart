// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppLogHttpLogAzureBlobStorage {
  /// The retention period in days.
  final pulumi.Input<int> retentionInDays;
  /// The SAS url to an Azure blob container.
  final pulumi.Input<String> sasUrl;

  /// Creates a new [GetLinuxWebAppLogHttpLogAzureBlobStorage].
  /// [retentionInDays] The retention period in days.
  /// [sasUrl] The SAS url to an Azure blob container.
  GetLinuxWebAppLogHttpLogAzureBlobStorage({
    required this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory GetLinuxWebAppLogHttpLogAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppLogHttpLogAzureBlobStorage(
      retentionInDays: (map['retentionInDays'] as int).input(),
      sasUrl: (map['sasUrl'] as String).input(),
    );
  }
}

