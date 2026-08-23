// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_access_policy_details.dart';

/// {@template pulumi_iam_project_access_policy_project_access_policy_args_doc}
/// The set of arguments for ProjectAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_project_access_policy_project_access_policy_args_doc}
class ProjectAccessPolicyArgs {
  /// The ID to use for the access policy, which
  /// will become the final component of the access policy's
  /// resource name.
  /// This value must start with a lowercase letter followed by up to 62
  /// lowercase letters, numbers, hyphens, or dots. Pattern,
  /// /a-z{2,62}/.
  /// This value must be unique among all access policies with the same parent.
  final pulumi.Input<String> accessPolicyId;
  /// User defined annotations. See https://google.aip.dev/148#annotations for
  /// more details such as format and size limitations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Access policy details.
  /// Structure is documented below.
  final pulumi.Input<ProjectAccessPolicyDetails>? details;
  /// The description of the access policy. Must be less than
  /// or equal to 63 characters.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectAccessPolicyArgs].
  /// [accessPolicyId] The ID to use for the access policy, which
  /// [annotations] User defined annotations. See https://google.aip.dev/148#annotations for
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [details] Access policy details.
  /// [displayName] The description of the access policy. Must be less than
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectAccessPolicyArgs({
    required this.accessPolicyId,
    this.annotations,
    this.deletionPolicy,
    this.details,
    this.displayName,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'details': ?pulumi.Input.mapOptionalInputValue<ProjectAccessPolicyDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
    };
  }

  factory ProjectAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ProjectAccessPolicyArgs(
      accessPolicyId: pulumi.Input.fromValue(map['accessPolicyId'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
