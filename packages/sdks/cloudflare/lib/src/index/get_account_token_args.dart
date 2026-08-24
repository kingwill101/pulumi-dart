// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_token_filter.dart';

/// {@template pulumi_index_get_account_token_get_account_token_args_doc}
/// Arguments for getAccountToken.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_token_get_account_token_args_doc}
class GetAccountTokenArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAccountTokenFilter?>? filter;
  /// Token identifier tag.
  final pulumi.Input<String?>? tokenId;

  /// Creates a new [GetAccountTokenArgs].
  /// [accountId] Account identifier tag.
  /// [filter] Optional.
  /// [tokenId] Token identifier tag.
  const GetAccountTokenArgs({
    this.accountId,
    this.filter,
    this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAccountTokenFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'tokenId': ?tokenId,
    };
  }

  factory GetAccountTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountTokenArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccountTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenId: (() { final guardedValue = map['tokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
