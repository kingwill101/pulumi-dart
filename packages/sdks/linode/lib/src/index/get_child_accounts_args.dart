// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_child_accounts_filter.dart';

/// {@template pulumi_index_get_child_accounts_get_child_accounts_args_doc}
/// Arguments for getChildAccounts.
/// {@endtemplate}
/// {@macro pulumi_index_get_child_accounts_get_child_accounts_args_doc}
class GetChildAccountsArgs {
  final pulumi.Input<List<GetChildAccountsFilter>>? filters;

  /// Creates a new [GetChildAccountsArgs].
  /// [filters] Optional.
  GetChildAccountsArgs({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetChildAccountsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetChildAccountsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetChildAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetChildAccountsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetChildAccountsFilter>(guardedValue, (value) => GetChildAccountsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

