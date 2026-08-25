import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_policy_args.dart';
import 'custom_target_type_iam_policy_state.dart';

class CustomTargetTypeIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [CustomTargetTypeIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomTargetTypeIamPolicy]. {@macro pulumi_clouddeploy_custom_target_type_iam_policy_custom_target_type_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomTargetTypeIamPolicy(
    String name, {
    CustomTargetTypeIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamPolicy:CustomTargetTypeIamPolicy',
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

  /// Gets an existing [CustomTargetTypeIamPolicy] resource's state with the given [name] and [id].
  static CustomTargetTypeIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    CustomTargetTypeIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomTargetTypeIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomTargetTypeIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamPolicy:CustomTargetTypeIamPolicy',
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

  /// Creates a typed reference to an existing [CustomTargetTypeIamPolicy] resource.
  CustomTargetTypeIamPolicy.reference(String urn)
    : super(
        'gcp:clouddeploy/customTargetTypeIamPolicy:CustomTargetTypeIamPolicy',
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
