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
  GetManagedZoneIamPolicyArgs({
    required pulumi.Output<String> managedZone,
    pulumi.Output<String>? project,
  }) :
      managedZone = pulumi.Input.asInput<String>(managedZone),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedZone': managedZone,
      'project': ?project,
    };
  }

  factory GetManagedZoneIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneIamPolicyArgs(
      managedZone: pulumi.Output.create<String>(map['managedZone'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

