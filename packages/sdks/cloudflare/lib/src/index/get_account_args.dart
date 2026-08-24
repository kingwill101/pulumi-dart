// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_filter.dart';

/// {@template pulumi_index_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_get_account_args_doc}
class GetAccountArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAccountFilter?>? filter;

  /// Creates a new [GetAccountArgs].
  /// [accountId] Account identifier tag.
  /// [filter] Optional.
  const GetAccountArgs({
    this.accountId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAccountFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccountFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
