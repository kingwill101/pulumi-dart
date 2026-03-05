// ignore_for_file: unused_element, unnecessary_cast

import 'access_restrictions_response.dart';

/// Result data returned by getWorkforcePool.
class GetWorkforcePoolResult {
  /// Optional. Configure access restrictions on the workforce pool users. This is an optional field. If specified web sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  final AccessRestrictionsResponse accessRestrictions;
  /// A user-specified description of the pool. Cannot exceed 256 characters.
  final String description;
  /// Disables the workforce pool. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final bool disabled;
  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  final String displayName;
  /// Time after which the workforce pool will be permanently purged and cannot be recovered.
  final String expireTime;
  /// The resource name of the pool. Format: `locations/{location}/workforcePools/{workforce_pool_id}`
  final String name;
  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  final String parent;
  /// Duration that the Google Cloud access tokens, console sign-in sessions, and `gcloud` sign-in sessions from this pool are valid. Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If `session_duration` is not configured, minted credentials have a default duration of one hour (3600s). For SAML providers, the lifetime of the token is the minimum of the `session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
  final String sessionDuration;
  /// The state of the pool.
  final String state;

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
  GetWorkforcePoolResult({
    required this.accessRestrictions,
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.expireTime,
    required this.name,
    required this.parent,
    required this.sessionDuration,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRestrictions': accessRestrictions.toMap(),
      'description': description,
      'disabled': disabled,
      'displayName': displayName,
      'expireTime': expireTime,
      'name': name,
      'parent': parent,
      'sessionDuration': sessionDuration,
      'state': state,
    };
  }

  factory GetWorkforcePoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolResult(
      accessRestrictions: AccessRestrictionsResponse.fromMap((map['accessRestrictions']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      sessionDuration: map['sessionDuration'] as String,
      state: map['state'] as String,
    );
  }
}

