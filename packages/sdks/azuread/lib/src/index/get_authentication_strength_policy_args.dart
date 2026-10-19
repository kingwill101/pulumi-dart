// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_authentication_strength_policy_get_authentication_strength_policy_args_doc}
/// Arguments for getAuthenticationStrengthPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_authentication_strength_policy_get_authentication_strength_policy_args_doc}
class GetAuthenticationStrengthPolicyArgs {
  /// The display name of the authentication strength policy.
  final pulumi.Input<String?>? displayName;
  /// The object ID of the authentication strength policy.
  ///
  /// &gt; One of `displayName` or `objectId` must be specified.
  ///
  /// &gt; **Tip** Display names are expected to be unique within a tenant, however this is not guaranteed by the API. Specify `objectId` where you need to be certain of matching a specific policy.
  final pulumi.Input<String?>? objectId;

  /// Creates a new [GetAuthenticationStrengthPolicyArgs].
  /// [displayName] The display name of the authentication strength policy.
  /// [objectId] The object ID of the authentication strength policy.
  const GetAuthenticationStrengthPolicyArgs({
    this.displayName,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'objectId': ?objectId,
    };
  }

  factory GetAuthenticationStrengthPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticationStrengthPolicyArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
