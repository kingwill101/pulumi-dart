// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1beta_get_guest_policy_args_doc}
/// Arguments for getGuestPolicy.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1beta_get_guest_policy_args_doc}
class GetGuestPolicyArgs {
  final pulumi.Input<String> guestPolicyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGuestPolicyArgs].
  /// [guestPolicyId] Required.
  /// [project] Optional.
  GetGuestPolicyArgs({
    required pulumi.Output<String> guestPolicyId,
    pulumi.Output<String>? project,
  }) :
      guestPolicyId = pulumi.Input.asInput<String>(guestPolicyId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestPolicyId': guestPolicyId,
      'project': ?project,
    };
  }

  factory GetGuestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestPolicyArgs(
      guestPolicyId: pulumi.Output.create<String>(map['guestPolicyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

