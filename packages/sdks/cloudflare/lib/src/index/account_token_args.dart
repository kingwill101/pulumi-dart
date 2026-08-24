// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_token_condition.dart';
import 'account_token_policy.dart';

/// {@template pulumi_index_account_token_account_token_args_doc}
/// The set of arguments for AccountToken.
/// {@endtemplate}
/// {@macro pulumi_index_account_token_account_token_args_doc}
class AccountTokenArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  final pulumi.Input<AccountTokenCondition?>? condition;
  /// The expiration time on or after which the JWT MUST NOT be accepted for processing.
  final pulumi.Input<String?>? expiresOn;
  /// Token name.
  final pulumi.Input<String> name;
  /// The time before which the token MUST NOT be accepted for processing.
  final pulumi.Input<String?>? notBefore;
  /// Set of access policies assigned to the token.
  final pulumi.Input<List<AccountTokenPolicy>> policies;
  /// Status of the token.
  /// Available values: "active", "disabled", "expired".
  final pulumi.Input<String?>? status;

  /// Creates a new [AccountTokenArgs].
  /// [accountId] Account identifier tag.
  /// [condition] Optional.
  /// [expiresOn] The expiration time on or after which the JWT MUST NOT be accepted for processing.
  /// [name] Token name.
  /// [notBefore] The time before which the token MUST NOT be accepted for processing.
  /// [policies] Set of access policies assigned to the token.
  /// [status] Status of the token.
  const AccountTokenArgs({
    required this.accountId,
    this.condition,
    this.expiresOn,
    required this.name,
    this.notBefore,
    required this.policies,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AccountTokenCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'expiresOn': ?expiresOn,
      'name': name,
      'notBefore': ?notBefore,
      'policies': pulumi.Input.mapInputValue<List<AccountTokenPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AccountTokenPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory AccountTokenArgs.fromMap(Map<String, dynamic> map) {
    return AccountTokenArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<AccountTokenPolicy>(map['policies']!, (value) => AccountTokenPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
