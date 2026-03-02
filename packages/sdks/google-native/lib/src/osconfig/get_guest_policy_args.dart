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
    required this.guestPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestPolicyId': guestPolicyId,
      'project': ?project,
    };
  }

  factory GetGuestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestPolicyArgs(
      guestPolicyId: (map['guestPolicyId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

