// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_access_restrictions.dart';

/// Input properties used for looking up and filtering WorkforcePool resources.
class WorkforcePoolState {
  /// Configure access restrictions on the workforce pool users. This is an optional field. If specified web
  /// sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolAccessRestrictions>? accessRestrictions;
  /// A user-specified description of the pool. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
  /// or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final pulumi.Input<bool>? disabled;
  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// The location for the resource.
  final pulumi.Input<String>? location;
  /// Output only. The resource name of the pool.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}`
  final pulumi.Input<String>? name;
  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  final pulumi.Input<String>? parent;
  /// Duration that the Google Cloud access tokens, console sign-in sessions,
  /// and `gcloud` sign-in sessions from this pool are valid.
  /// Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
  /// If `sessionDuration` is not configured, minted credentials have a default duration of one hour (3600s).
  /// A duration in seconds with up to nine fractional digits, ending with '`s`'. Example: "`3.5s`".
  final pulumi.Input<String>? sessionDuration;
  /// Output only. The state of the pool.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The pool is active, and may be used in Google Cloud policies.
  /// * DELETED: The pool is soft-deleted. Soft-deleted pools are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted pool using
  /// [workforcePools.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePool).
  /// You cannot reuse the ID of a soft-deleted pool until it is permanently deleted.
  /// While a pool is deleted, you cannot use it to exchange tokens, or use
  /// existing tokens to access resources. If the pool is undeleted, existing
  /// tokens grant access again.
  final pulumi.Input<String>? state;
  /// The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  /// digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String>? workforcePoolId;

  /// Creates a new [WorkforcePoolState].
  /// [accessRestrictions] Configure access restrictions on the workforce pool users. This is an optional field. If specified web
  /// [description] A user-specified description of the pool. Cannot exceed 256 characters.
  /// [disabled] Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
  /// [displayName] A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  /// [location] The location for the resource.
  /// [name] Output only. The resource name of the pool.
  /// [parent] Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  /// [sessionDuration] Duration that the Google Cloud access tokens, console sign-in sessions,
  /// [state] Output only. The state of the pool.
  /// [workforcePoolId] The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  WorkforcePoolState({
    this.accessRestrictions,
    this.description,
    this.disabled,
    this.displayName,
    this.location,
    this.name,
    this.parent,
    this.sessionDuration,
    this.state,
    this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRestrictions': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolAccessRestrictions, Map<String, dynamic>>(accessRestrictions, (value) => value.toMap()),
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'sessionDuration': ?sessionDuration,
      'state': ?state,
      'workforcePoolId': ?workforcePoolId,
    };
  }

  factory WorkforcePoolState.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolState(
      accessRestrictions: map['accessRestrictions'] == null ? null : (WorkforcePoolAccessRestrictions.fromMap((map['accessRestrictions'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      sessionDuration: map['sessionDuration'] == null ? null : (map['sessionDuration'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      workforcePoolId: map['workforcePoolId'] == null ? null : (map['workforcePoolId'] as String).input(),
    );
  }
}

