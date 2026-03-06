// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_access_restrictions.dart';

/// {@template pulumi_iam_workforce_pool_workforce_pool_args_doc}
/// The set of arguments for WorkforcePool.
/// {@endtemplate}
/// {@macro pulumi_iam_workforce_pool_workforce_pool_args_doc}
class WorkforcePoolArgs {
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
  final pulumi.Input<String> location;
  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  final pulumi.Input<String> parent;
  /// Duration that the Google Cloud access tokens, console sign-in sessions,
  /// and `gcloud` sign-in sessions from this pool are valid.
  /// Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
  /// If `sessionDuration` is not configured, minted credentials have a default duration of one hour (3600s).
  /// A duration in seconds with up to nine fractional digits, ending with '`s`'. Example: "`3.5s`".
  final pulumi.Input<String>? sessionDuration;
  /// The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  /// digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [WorkforcePoolArgs].
  /// [accessRestrictions] Configure access restrictions on the workforce pool users. This is an optional field. If specified web
  /// [description] A user-specified description of the pool. Cannot exceed 256 characters.
  /// [disabled] Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
  /// [displayName] A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  /// [location] The location for the resource.
  /// [parent] Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  /// [sessionDuration] Duration that the Google Cloud access tokens, console sign-in sessions,
  /// [workforcePoolId] The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  const WorkforcePoolArgs({
    this.accessRestrictions,
    this.description,
    this.disabled,
    this.displayName,
    required this.location,
    required this.parent,
    this.sessionDuration,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRestrictions': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolAccessRestrictions, Map<String, dynamic>>(accessRestrictions, (value) => value.toMap()),
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'location': location,
      'parent': parent,
      'sessionDuration': ?sessionDuration,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory WorkforcePoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolArgs(
      accessRestrictions: (() { final guardedValue = map['accessRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolAccessRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforcePoolId: pulumi.Input.fromValue(map['workforcePoolId'] as String),
    );
  }
}

