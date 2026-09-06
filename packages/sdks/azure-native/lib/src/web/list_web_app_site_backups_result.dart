// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_item_response.dart';

/// Result data returned by listWebAppSiteBackups.
class ListWebAppSiteBackupsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The BackupItem items on this page
  final List<BackupItemResponse>? value;

  /// Creates a new [ListWebAppSiteBackupsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The BackupItem items on this page
  const ListWebAppSiteBackupsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<BackupItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListWebAppSiteBackupsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppSiteBackupsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BackupItemResponse>(guardedValue, (value) => BackupItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
