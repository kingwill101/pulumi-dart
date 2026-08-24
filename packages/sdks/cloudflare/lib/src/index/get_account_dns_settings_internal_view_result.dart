// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_dns_settings_internal_view_filter.dart';

/// Result data returned by getAccountDnsSettingsInternalView.
class GetAccountDnsSettingsInternalViewResult {
  /// Identifier.
  final String? accountId;
  /// When the view was created.
  final String? createdTime;
  final GetAccountDnsSettingsInternalViewFilter? filter;
  /// Identifier.
  final String? id;
  /// When the view was last modified.
  final String? modifiedTime;
  /// The name of the view.
  final String? name;
  /// Identifier.
  final String? viewId;
  /// The list of zones linked to this view.
  final List<String>? zones;

  /// Creates a new [GetAccountDnsSettingsInternalViewResult].
  /// [accountId] Identifier.
  /// [createdTime] When the view was created.
  /// [filter] Optional.
  /// [id] Identifier.
  /// [modifiedTime] When the view was last modified.
  /// [name] The name of the view.
  /// [viewId] Identifier.
  /// [zones] The list of zones linked to this view.
  const GetAccountDnsSettingsInternalViewResult({
    this.accountId,
    this.createdTime,
    this.filter,
    this.id,
    this.modifiedTime,
    this.name,
    this.viewId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdTime': ?createdTime,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'modifiedTime': ?modifiedTime,
      'name': ?name,
      'viewId': ?viewId,
      'zones': ?zones,
    };
  }

  factory GetAccountDnsSettingsInternalViewResult.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsInternalViewResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAccountDnsSettingsInternalViewFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedTime: (() { final guardedValue = map['modifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      viewId: (() { final guardedValue = map['viewId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
