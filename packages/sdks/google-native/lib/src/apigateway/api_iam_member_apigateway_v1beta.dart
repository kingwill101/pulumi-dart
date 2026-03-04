import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';
import 'api_iam_member_apigateway_v1beta_args.dart';

/// Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.
class ApiIamMemberApigatewayV1beta extends pulumi.CustomResource {
  /// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
  late final pulumi.Output<Condition?> condition;

  /// The etag of the resource's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;

  /// The name of the resource to manage IAM policies for.
  late final pulumi.Output<String> name;

  /// The project in which the resource belongs. If it is not provided, a default will be supplied.
  late final pulumi.Output<String> project;

  /// The role that should be applied.
  late final pulumi.Output<String> role;

  /// Creates a new [ApiIamMemberApigatewayV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiIamMemberApigatewayV1beta]. {@macro pulumi_apigateway_v1beta_api_iam_member_apigateway_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiIamMemberApigatewayV1beta(
    String name, {
    ApiIamMemberApigatewayV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigateway/v1beta:ApiIamMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    condition = registerOutput<Condition?>('condition');
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
