// ignore_for_file: unused_element, unnecessary_cast

import 'access_restrictions_response.dart';

/// Result data returned by getWorkforcePool.
class GetWorkforcePoolResult {
  /// Optional. Configure access restrictions on the workforce pool users. This is an optional field. If specified web sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  final AccessRestrictionsResponse? accessRestrictions;
  /// A user-specified description of the pool. Cannot exceed 256 characters.
  final String? description;
  /// Disables the workforce pool. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final bool? disabled;
  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  final String? displayName;
  /// Time after which the workforce pool will be permanently purged and cannot be recovered.
  final String? expireTime;
  /// The resource name of the pool. Format: `locations/{location}/workforcePools/{workforce_pool_id}`
  final String? name;
  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  final String? parent;
  /// Duration that the Google Cloud access tokens, console sign-in sessions, and `gcloud` sign-in sessions from this pool are valid. Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If `session_duration` is not configured, minted credentials have a default duration of one hour (3600s). For SAML providers, the lifetime of the token is the minimum of the `session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
  final String? sessionDuration;
  /// The state of the pool.
  final String? state;

  /// Creates a new [GetWorkforcePoolResult].
  /// [accessRestrictions] Optional. Configure access restrictions on the workforce pool users. This is an optional field. If specified web sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  /// [description] A user-specified description of the pool. Cannot exceed 256 characters.
  /// [disabled] Disables the workforce pool. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  /// [displayName] A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  /// [expireTime] Time after which the workforce pool will be permanently purged and cannot be recovered.
  /// [name] The resource name of the pool. Format: `locations/{location}/workforcePools/{workforce_pool_id}`
  /// [parent] Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  /// [sessionDuration] Duration that the Google Cloud access tokens, console sign-in sessions, and `gcloud` sign-in sessions from this pool are valid. Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If `session_duration` is not configured, minted credentials have a default duration of one hour (3600s). For SAML providers, the lifetime of the token is the minimum of the `session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
  /// [state] The state of the pool.
  const GetWorkforcePoolResult({
    this.accessRestrictions,
    this.description,
    this.disabled,
    this.displayName,
    this.expireTime,
    this.name,
    this.parent,
    this.sessionDuration,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRestrictions': ?accessRestrictions?.toMap(),
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'expireTime': ?expireTime,
      'name': ?name,
      'parent': ?parent,
      'sessionDuration': ?sessionDuration,
      'state': ?state,
    };
  }

  factory GetWorkforcePoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolResult(
      accessRestrictions: (() { final guardedValue = map['accessRestrictions']; if (guardedValue == null) return null; return AccessRestrictionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
