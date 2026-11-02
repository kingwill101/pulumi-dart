// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_token_condition.dart';
import 'get_account_token_filter.dart';
import 'get_account_token_policy.dart';

/// Result data returned by getAccountToken.
class GetAccountTokenResult {
  /// Account identifier tag.
  final String? accountId;
  final GetAccountTokenCondition? condition;
  /// The email address of the user who created the token at the time of
  /// creation. Only present for Account Owned API Tokens when a creator email
  /// was available.
  final String? creatorEmailAtCreation;
  /// The expiration time on or after which the JWT MUST NOT be accepted for processing.
  final String? expiresOn;
  final GetAccountTokenFilter? filter;
  /// Token identifier tag.
  final String? id;
  /// The time on which the token was created.
  final String? issuedOn;
  /// Last time the token was used.
  final String? lastUsedOn;
  /// Last time the token was modified.
  final String? modifiedOn;
  /// Token name.
  final String? name;
  /// The time before which the token MUST NOT be accepted for processing.
  final String? notBefore;
  /// List of access policies assigned to the token.
  final List<GetAccountTokenPolicy>? policies;
  /// The identifier of the service that provisioned the token. For an
  /// OAuth-provisioned token, this is the OAuth client identifier. Present
  /// when `provisionerType` is present and null when the identifier is
  /// unavailable.
  final String? provisionerId;
  /// The type of service that provisioned the token. Only present for
  /// provisioned Account Owned API Tokens.
  final String? provisionerType;
  /// Status of the token.
  /// Available values: "active", "disabled", "expired".
  final String? status;
  /// Token identifier tag.
  final String? tokenId;

  /// Creates a new [GetAccountTokenResult].
  /// [accountId] Account identifier tag.
  /// [condition] Optional.
  /// [creatorEmailAtCreation] The email address of the user who created the token at the time of
  /// [expiresOn] The expiration time on or after which the JWT MUST NOT be accepted for processing.
  /// [filter] Optional.
  /// [id] Token identifier tag.
  /// [issuedOn] The time on which the token was created.
  /// [lastUsedOn] Last time the token was used.
  /// [modifiedOn] Last time the token was modified.
  /// [name] Token name.
  /// [notBefore] The time before which the token MUST NOT be accepted for processing.
  /// [policies] List of access policies assigned to the token.
  /// [provisionerId] The identifier of the service that provisioned the token. For an
  /// [provisionerType] The type of service that provisioned the token. Only present for
  /// [status] Status of the token.
  /// [tokenId] Token identifier tag.
  const GetAccountTokenResult({
    this.accountId,
    this.condition,
    this.creatorEmailAtCreation,
    this.expiresOn,
    this.filter,
    this.id,
    this.issuedOn,
    this.lastUsedOn,
    this.modifiedOn,
    this.name,
    this.notBefore,
    this.policies,
    this.provisionerId,
    this.provisionerType,
    this.status,
    this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'condition': ?condition?.toMap(),
      'creatorEmailAtCreation': ?creatorEmailAtCreation,
      'expiresOn': ?expiresOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'issuedOn': ?issuedOn,
      'lastUsedOn': ?lastUsedOn,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'notBefore': ?notBefore,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountTokenPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisionerId': ?provisionerId,
      'provisionerType': ?provisionerType,
      'status': ?status,
      'tokenId': ?tokenId,
    };
  }

  factory GetAccountTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAccountTokenResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return GetAccountTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creatorEmailAtCreation: (() { final guardedValue = map['creatorEmailAtCreation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAccountTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuedOn: (() { final guardedValue = map['issuedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUsedOn: (() { final guardedValue = map['lastUsedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountTokenPolicy>(guardedValue, (value) => GetAccountTokenPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisionerId: (() { final guardedValue = map['provisionerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisionerType: (() { final guardedValue = map['provisionerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenId: (() { final guardedValue = map['tokenId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
