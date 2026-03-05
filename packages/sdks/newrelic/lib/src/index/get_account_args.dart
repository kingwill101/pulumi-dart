// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_get_account_args_doc}
class GetAccountArgs {
  /// The unique identifier of the account in New Relic. This must be an integer.
  final pulumi.Input<String>? accountId;
  /// The name of the account in New Relic. This must be a string.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? scope;

  /// Creates a new [GetAccountArgs].
  /// [accountId] The unique identifier of the account in New Relic. This must be an integer.
  /// [name] The name of the account in New Relic. This must be a string.
  /// [scope] Optional.
  GetAccountArgs({
    this.accountId,
    this.name,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
      'scope': ?scope,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

