// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_item_response.dart';

/// Result data returned by listWebAppSiteBackupsSlot.
class ListWebAppSiteBackupsSlotResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The BackupItem items on this page
  final List<BackupItemResponse> value;

  /// Creates a new [ListWebAppSiteBackupsSlotResult].
  /// [nextLink] The link to the next page of items
  /// [value] The BackupItem items on this page
  const ListWebAppSiteBackupsSlotResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<BackupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListWebAppSiteBackupsSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppSiteBackupsSlotResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<BackupItemResponse>(map['value']!, (value) => BackupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
