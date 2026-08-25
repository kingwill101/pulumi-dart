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
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [InstanceIamPolicy] resource's state with the given [name] and [id].
  static InstanceIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    InstanceIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [InstanceIamPolicy] resource.
  InstanceIamPolicy.reference(String urn)
    : super(
        'gcp:workbench/instanceIamPolicy:InstanceIamPolicy',
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
