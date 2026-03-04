import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_policy_args.dart';
import 'delivery_pipeline_iam_policy_state.dart';

class DeliveryPipelineIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [DeliveryPipelineIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryPipelineIamPolicy]. {@macro pulumi_clouddeploy_delivery_pipeline_iam_policy_delivery_pipeline_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryPipelineIamPolicy(
    String name, {
    DeliveryPipelineIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:clouddeploy/deliveryPipelineIamPolicy:DeliveryPipelineIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [DeliveryPipelineIamPolicy] resource's state with the given [name] and [id].
  static DeliveryPipelineIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    DeliveryPipelineIamPolicyState? state,
  }) {
    return DeliveryPipelineIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeliveryPipelineIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:clouddeploy/deliveryPipelineIamPolicy:DeliveryPipelineIamPolicy',
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
}
