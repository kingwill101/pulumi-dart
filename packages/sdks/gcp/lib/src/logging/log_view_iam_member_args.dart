// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_view_iam_member_condition.dart';

/// {@template pulumi_logging_log_view_iam_member_log_view_iam_member_args_doc}
/// The set of arguments for LogViewIamMember.
/// {@endtemplate}
/// {@macro pulumi_logging_log_view_iam_member_log_view_iam_member_args_doc}
class LogViewIamMemberArgs {
  /// The bucket of the resource Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> bucket;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<LogViewIamMemberCondition>? condition;
  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
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
  final pulumi.Input<String> member;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? name;
  /// The parent of the resource. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> parent;
  /// The role that should be applied. Only one
  /// `gcp.logging.LogViewIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [LogViewIamMemberArgs].
  /// [bucket] The bucket of the resource Used to find the parent resource to bind the IAM policy to
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [location] The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [member] Identities that will be granted the privilege in `role`.
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [parent] The parent of the resource. Used to find the parent resource to bind the IAM policy to
  /// [role] The role that should be applied. Only one
  LogViewIamMemberArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<LogViewIamMemberCondition>? condition,
    pulumi.Output<String>? location,
    required pulumi.Output<String> member,
    pulumi.Output<String>? name,
    required pulumi.Output<String> parent,
    required pulumi.Output<String> role,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      condition = pulumi.Input.asOptionalInput<LogViewIamMemberCondition>(condition),
      location = pulumi.Input.asOptionalInput<String>(location),
      member = pulumi.Input.asInput<String>(member),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asInput<String>(parent),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'condition': ?pulumi.Input.mapOptionalInputValue<LogViewIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'name': ?name,
      'parent': parent,
      'role': role,
    };
  }

  factory LogViewIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return LogViewIamMemberArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      condition: map['condition'] == null ? null : pulumi.Output.create<LogViewIamMemberCondition>(LogViewIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      member: pulumi.Output.create<String>(map['member'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

