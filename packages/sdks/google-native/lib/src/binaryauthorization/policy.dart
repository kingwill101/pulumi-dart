import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_policy_response.dart';
import 'policy_args.dart';

/// Creates a platform policy, and returns a copy of it. Returns `NOT_FOUND` if the project or platform doesn't exist, `INVALID_ARGUMENT` if the request is malformed, `ALREADY_EXISTS` if the policy already exists, and `INVALID_ARGUMENT` if the policy contains a platform-specific policy that does not match the platform value specified in the URL.
/// Auto-naming is currently not supported for this resource.
class Policy extends pulumi.CustomResource {
  /// Optional. A description comment about the policy.
  late final pulumi.Output<String> description;

  /// Optional. GKE platform-specific policy.
  late final pulumi.Output<GkePolicyResponse> gkePolicy;

  /// The relative resource name of the Binary Authorization platform policy, in the form of `projects/*/platforms/*/policies/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> platformId;

  /// Required. The platform policy ID.
  late final pulumi.Output<String> policyId;
  late final pulumi.Output<String> project;

  /// Time when the policy was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_binaryauthorization_v1_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:binaryauthorization/v1:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    description = registerOutput<String>('description');
    gkePolicy = registerOutput<GkePolicyResponse>(
      'gkePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GkePolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    platformId = registerOutput<String>('platformId');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
