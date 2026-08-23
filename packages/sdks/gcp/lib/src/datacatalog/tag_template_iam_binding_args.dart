// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_iam_binding_condition.dart';

/// {@template pulumi_datacatalog_tag_template_iam_binding_tag_template_iam_binding_args_doc}
/// The set of arguments for TagTemplateIamBinding.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_tag_template_iam_binding_tag_template_iam_binding_args_doc}
class TagTemplateIamBindingArgs {
  final pulumi.Input<TagTemplateIamBindingCondition>? condition;
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
  /// Template location region.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// The role that should be applied. Only one
  /// `gcp.datacatalog.TagTemplateIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> tagTemplate;

  /// Creates a new [TagTemplateIamBindingArgs].
  /// [condition] Optional.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Template location region.
  /// [role] The role that should be applied. Only one
  /// [tagTemplate] Used to find the parent resource to bind the IAM policy to
  const TagTemplateIamBindingArgs({
    this.condition,
    required this.members,
    this.project,
    this.region,
    required this.role,
    required this.tagTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TagTemplateIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'project': ?project,
      'region': ?region,
      'role': role,
      'tagTemplate': tagTemplate,
    };
  }

  factory TagTemplateIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return TagTemplateIamBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagTemplateIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      tagTemplate: pulumi.Input.fromValue(map['tagTemplate'] as String),
    );
  }
}
