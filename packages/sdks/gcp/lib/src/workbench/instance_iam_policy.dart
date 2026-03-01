import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_args.dart';
import 'instance_iam_policy_state.dart';

class InstanceIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [InstanceIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamPolicy]. {@macro pulumi_workbench_instance_iam_policy_instance_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamPolicy(
    String name, {
    InstanceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [InstanceIamPolicy] resource's state with the given [name] and [id].
  static InstanceIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    InstanceIamPolicyState? state,
  }) {
    return InstanceIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
