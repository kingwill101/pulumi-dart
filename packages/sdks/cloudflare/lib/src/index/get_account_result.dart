// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_filter.dart';
import 'get_account_managed_by.dart';
import 'get_account_settings.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// Account identifier tag.
  final String? accountId;
  /// Timestamp for the creation of the account
  final String? createdOn;
  final GetAccountFilter? filter;
  /// Account identifier tag.
  final String? id;
  /// Parent container details
  final GetAccountManagedBy? managedBy;
  /// Account name
  final String? name;
  /// Account settings
  final GetAccountSettings? settings;
  /// Available values: "standard", "enterprise".
  final String? type;

  /// Creates a new [GetAccountResult].
  /// [accountId] Account identifier tag.
  /// [createdOn] Timestamp for the creation of the account
  /// [filter] Optional.
  /// [id] Account identifier tag.
  /// [managedBy] Parent container details
  /// [name] Account name
  /// [settings] Account settings
  /// [type] Available values: "standard", "enterprise".
  const GetAccountResult({
    this.accountId,
    this.createdOn,
    this.filter,
    this.id,
    this.managedBy,
    this.name,
    this.settings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'managedBy': ?managedBy?.toMap(),
      'name': ?name,
      'settings': ?settings?.toMap(),
      'type': ?type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAccountFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return GetAccountManagedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return GetAccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
