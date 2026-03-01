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
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetChildAccountsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetChildAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetChildAccountsResult(
      childAccounts: pulumi.Input.decodeList<GetChildAccountsChildAccount>(map['childAccounts'], (value) => GetChildAccountsChildAccount.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetChildAccountsFilter>(map['filters'], (value) => GetChildAccountsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

