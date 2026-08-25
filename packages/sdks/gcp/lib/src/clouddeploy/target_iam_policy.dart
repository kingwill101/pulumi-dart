import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_policy_args.dart';
import 'target_iam_policy_state.dart';

class TargetIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [TargetIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetIamPolicy]. {@macro pulumi_clouddeploy_target_iam_policy_target_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetIamPolicy(
    String name, {
    TargetIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/targetIamPolicy:TargetIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [TargetIamPolicy] resource's state with the given [name] and [id].
  static TargetIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    TargetIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TargetIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TargetIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/targetIamPolicy:TargetIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [TargetIamPolicy] resource.
  TargetIamPolicy.reference(String urn)
    : super(
        'gcp:clouddeploy/targetIamPolicy:TargetIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
