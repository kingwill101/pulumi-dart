import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';
import 'job_iam_binding_run_v2_args.dart';

/// Sets the IAM Access control policy for the specified Job. Overwrites any existing policy.
class JobIamBindingRunV2 extends pulumi.CustomResource {
  /// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
  late final pulumi.Output<Condition?> condition;

  /// The etag of the resource's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in role. Each entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;

  /// The name of the resource to manage IAM policies for.
  late final pulumi.Output<String> name;

  /// The project in which the resource belongs. If it is not provided, a default will be supplied.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one `IamBinding` can be used per role.
  late final pulumi.Output<String> role;

  /// Creates a new [JobIamBindingRunV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobIamBindingRunV2]. {@macro pulumi_run_v2_job_iam_binding_run_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobIamBindingRunV2(
    String name, {
    JobIamBindingRunV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:run/v2:JobIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    condition = registerOutput<Condition?>('condition');
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
