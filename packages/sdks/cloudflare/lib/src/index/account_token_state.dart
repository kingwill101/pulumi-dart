// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_token_condition.dart';
import 'account_token_policy.dart';

/// Input properties used for looking up and filtering AccountToken resources.
class AccountTokenState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<AccountTokenCondition?>? condition;
  /// The expiration time on or after which the JWT MUST NOT be accepted for processing.
  final pulumi.Input<String?>? expiresOn;
  /// The time on which the token was created.
  final pulumi.Input<String?>? issuedOn;
  /// Last time the token was used.
  final pulumi.Input<String?>? lastUsedOn;
  /// Last time the token was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Token name.
  final pulumi.Input<String?>? name;
  /// The time before which the token MUST NOT be accepted for processing.
  final pulumi.Input<String?>? notBefore;
  /// Set of access policies assigned to the token.
  final pulumi.Input<List<AccountTokenPolicy>?>? policies;
  /// Status of the token.
  /// Available values: "active", "disabled", "expired".
  final pulumi.Input<String?>? status;
  /// The token value.
  final pulumi.Input<String?>? value;

  /// Creates a new [AccountTokenState].
  /// [accountId] Account identifier tag.
  /// [condition] Optional.
  /// [expiresOn] The expiration time on or after which the JWT MUST NOT be accepted for processing.
  /// [issuedOn] The time on which the token was created.
  /// [lastUsedOn] Last time the token was used.
  /// [modifiedOn] Last time the token was modified.
  /// [name] Token name.
  /// [notBefore] The time before which the token MUST NOT be accepted for processing.
  /// [policies] Set of access policies assigned to the token.
  /// [status] Status of the token.
  /// [value] The token value.
  const AccountTokenState({
    this.accountId,
    this.condition,
    this.expiresOn,
    this.issuedOn,
    this.lastUsedOn,
    this.modifiedOn,
    this.name,
    this.notBefore,
    this.policies,
    this.status,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AccountTokenCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'expiresOn': ?expiresOn,
      'issuedOn': ?issuedOn,
      'lastUsedOn': ?lastUsedOn,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'notBefore': ?notBefore,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<AccountTokenPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AccountTokenPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'value': ?value,
    };
  }

  factory AccountTokenState.fromMap(Map<String, dynamic> map) {
    return AccountTokenState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuedOn: (() { final guardedValue = map['issuedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUsedOn: (() { final guardedValue = map['lastUsedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountTokenPolicy>(guardedValue, (value) => AccountTokenPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
