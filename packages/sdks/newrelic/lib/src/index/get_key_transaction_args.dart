// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_key_transaction_get_key_transaction_args_doc}
/// Arguments for getKeyTransaction.
/// {@endtemplate}
/// {@macro pulumi_index_get_key_transaction_get_key_transaction_args_doc}
class GetKeyTransactionArgs {
  /// The account ID you would like to search for key transactions in. Defaults to `account_id` in the `provider{}` (or `NEW_RELIC_ACCOUNT_ID` in your environment) if not specified.
  ///
  /// &gt; **NOTE** If the `name` specified in the configuration matches the names of multiple key transactions in the account, the data source will return the first match from the list of all matching key transactions retrieved from the API. However, when using the `guid` argument as the search criterion, only the key transaction with that particular GUID is returned, as each key transaction has a unique GUID.
  final pulumi.Input<String>? accountId;
  /// GUID of the key transaction in New Relic.
  final pulumi.Input<String>? guid;
  /// The name of the key transaction in New Relic.
  final pulumi.Input<String> name;

  /// Creates a new [GetKeyTransactionArgs].
  /// [accountId] The account ID you would like to search for key transactions in. Defaults to `account_id` in the `provider{}` (or `NEW_RELIC_ACCOUNT_ID` in your environment) if not specified.
  /// [guid] GUID of the key transaction in New Relic.
  /// [name] The name of the key transaction in New Relic.
  GetKeyTransactionArgs({
    this.accountId,
    this.guid,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'guid': ?guid,
      'name': name,
    };
  }

  factory GetKeyTransactionArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyTransactionArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

