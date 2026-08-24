// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_token_condition.dart';
import 'get_api_token_filter.dart';
import 'get_api_token_policy.dart';

/// Result data returned by getApiToken.
class GetApiTokenResult {
  final GetApiTokenCondition? condition;
  /// The expiration time on or after which the JWT MUST NOT be accepted for processing.
  final String? expiresOn;
  final GetApiTokenFilter? filter;
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
  final List<GetApiTokenPolicy>? policies;
  /// Status of the token.
  /// Available values: "active", "disabled", "expired".
  final String? status;
  /// Token identifier tag.
  final String? tokenId;

  /// Creates a new [GetApiTokenResult].
  /// [condition] Optional.
  /// [expiresOn] The expiration time on or after which the JWT MUST NOT be accepted for processing.
  /// [filter] Optional.
  /// [id] Token identifier tag.
  /// [issuedOn] The time on which the token was created.
  /// [lastUsedOn] Last time the token was used.
  /// [modifiedOn] Last time the token was modified.
  /// [name] Token name.
  /// [notBefore] The time before which the token MUST NOT be accepted for processing.
  /// [policies] List of access policies assigned to the token.
  /// [status] Status of the token.
  /// [tokenId] Token identifier tag.
  const GetApiTokenResult({
    this.condition,
    this.expiresOn,
    this.filter,
    this.id,
    this.issuedOn,
    this.lastUsedOn,
    this.modifiedOn,
    this.name,
    this.notBefore,
    this.policies,
    this.status,
    this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition?.toMap(),
      'expiresOn': ?expiresOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'issuedOn': ?issuedOn,
      'lastUsedOn': ?lastUsedOn,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'notBefore': ?notBefore,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiTokenPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tokenId': ?tokenId,
    };
  }

  factory GetApiTokenResult.fromMap(Map<String, dynamic> map) {
    return GetApiTokenResult(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return GetApiTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetApiTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuedOn: (() { final guardedValue = map['issuedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUsedOn: (() { final guardedValue = map['lastUsedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiTokenPolicy>(guardedValue, (value) => GetApiTokenPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenId: (() { final guardedValue = map['tokenId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
