// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumers_iam_binding_condition.dart';

/// {@template pulumi_endpoints_consumers_iam_binding_consumers_iam_binding_args_doc}
/// The set of arguments for ConsumersIamBinding.
/// {@endtemplate}
/// {@macro pulumi_endpoints_consumers_iam_binding_consumers_iam_binding_args_doc}
class ConsumersIamBindingArgs {
  final pulumi.Input<ConsumersIamBindingCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> consumerProject;
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
  /// The role that should be applied. Only one
  /// `gcp.endpoints.ConsumersIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;
  /// The name of the service. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceName;

  /// Creates a new [ConsumersIamBindingArgs].
  /// [condition] Optional.
  /// [consumerProject] Used to find the parent resource to bind the IAM policy to
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  /// [serviceName] The name of the service. Used to find the parent resource to bind the IAM policy to
  ConsumersIamBindingArgs({
    this.condition,
    required this.consumerProject,
    required this.members,
    required this.role,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<ConsumersIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'consumerProject': consumerProject,
      'members': members,
      'role': role,
      'serviceName': serviceName,
    };
  }

  factory ConsumersIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return ConsumersIamBindingArgs(
      condition: map['condition'] == null ? null : (ConsumersIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      consumerProject: (map['consumerProject'] as String).input(),
      members: ((map['members'] as List).cast<String>()).input(),
      role: (map['role'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

