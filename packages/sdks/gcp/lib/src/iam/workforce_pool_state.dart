// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_access_restrictions.dart';

/// Input properties used for looking up and filtering WorkforcePool resources.
class WorkforcePoolState {
  /// Configure access restrictions on the workforce pool users. This is an optional field. If specified web
  /// sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolAccessRestrictions>? accessRestrictions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A user-specified description of the pool. Cannot exceed 256 characters.
  /// [disabled] Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
  /// [displayName] A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  /// [location] The location for the resource.
  /// [name] Output only. The resource name of the pool.
  /// [parent] Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  /// [sessionDuration] Duration that the Google Cloud access tokens, console sign-in sessions,
  /// [state] Output only. The state of the pool.
  /// [workforcePoolId] The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  const WorkforcePoolState({
    this.accessRestrictions,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      accessRestrictions: (() { final guardedValue = map['accessRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolAccessRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforcePoolId: (() { final guardedValue = map['workforcePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
