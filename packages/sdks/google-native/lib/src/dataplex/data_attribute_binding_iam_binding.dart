import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';
import 'data_attribute_binding_iam_binding_args.dart';

/// Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.
class DataAttributeBindingIamBinding extends pulumi.CustomResource {
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

  /// Creates a new [DataAttributeBindingIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataAttributeBindingIamBinding]. {@macro pulumi_dataplex_v1_data_attribute_binding_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataAttributeBindingIamBinding(
    String name, {
    DataAttributeBindingIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataplex/v1:DataAttributeBindingIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    condition = registerOutput<Condition?>(
      'condition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Condition.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
