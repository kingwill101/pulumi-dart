// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_item_response.dart';

/// Result data returned by listWebAppSiteBackupsSlot.
class ListWebAppSiteBackupsSlotResult {
  /// Link to next page of resources.
  final String nextLink;
  /// Collection of resources.
  final List<BackupItemResponse> value;

  /// Creates a new [ListWebAppSiteBackupsSlotResult].
  /// [nextLink] Link to next page of resources.
  /// [value] Collection of resources.
  ListWebAppSiteBackupsSlotResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<BackupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListWebAppSiteBackupsSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppSiteBackupsSlotResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<BackupItemResponse>(map['value'], (value) => BackupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

