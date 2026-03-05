// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_child_accounts_child_account.dart';
import 'get_child_accounts_filter.dart';

/// Result data returned by getChildAccounts.
class GetChildAccountsResult {
  final List<GetChildAccountsChildAccount> childAccounts;
  final List<GetChildAccountsFilter>? filters;
  final String id;

  /// Creates a new [GetChildAccountsResult].
  /// [childAccounts] Required.
  /// [filters] Optional.
  /// [id] Required.
  GetChildAccountsResult({
    required this.childAccounts,
    this.filters,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childAccounts': pulumi.Input.encodeList<GetChildAccountsChildAccount, Map<String, dynamic>>(childAccounts, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetChildAccountsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
    };
  }

  factory GetChildAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetChildAccountsResult(
      childAccounts: pulumi.Input.decodeList<GetChildAccountsChildAccount>(map['childAccounts']!, (value) => GetChildAccountsChildAccount.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetChildAccountsFilter>(guardedValue, (value) => GetChildAccountsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
    );
  }
}

