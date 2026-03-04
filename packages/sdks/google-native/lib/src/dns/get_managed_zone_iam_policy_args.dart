// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_managed_zone_iam_policy_args_doc}
/// Arguments for getManagedZoneIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_managed_zone_iam_policy_args_doc}
class GetManagedZoneIamPolicyArgs {
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneIamPolicyArgs].
  /// [managedZone] Required.
  /// [project] Optional.
  GetManagedZoneIamPolicyArgs({required this.managedZone, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'managedZone': managedZone, 'project': ?project};
  }

  factory GetManagedZoneIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneIamPolicyArgs(
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
