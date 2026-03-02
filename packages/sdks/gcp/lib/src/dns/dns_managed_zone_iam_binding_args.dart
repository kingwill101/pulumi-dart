// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_managed_zone_iam_binding_condition.dart';

/// {@template pulumi_dns_dns_managed_zone_iam_binding_dns_managed_zone_iam_binding_args_doc}
/// The set of arguments for DnsManagedZoneIamBinding.
/// {@endtemplate}
/// {@macro pulumi_dns_dns_managed_zone_iam_binding_dns_managed_zone_iam_binding_args_doc}
class DnsManagedZoneIamBindingArgs {
  final pulumi.Input<DnsManagedZoneIamBindingCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> managedZone;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<List<String>> members;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.dns.DnsManagedZoneIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [DnsManagedZoneIamBindingArgs].
  /// [condition] Optional.
  /// [managedZone] Used to find the parent resource to bind the IAM policy to
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  DnsManagedZoneIamBindingArgs({
    this.condition,
    required this.managedZone,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DnsManagedZoneIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'managedZone': managedZone,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory DnsManagedZoneIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return DnsManagedZoneIamBindingArgs(
      condition: map['condition'] == null ? null : (DnsManagedZoneIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      managedZone: (map['managedZone'] as String).input(),
      members: ((map['members'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

