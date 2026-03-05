import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_binding_args.dart';
import 'delivery_pipeline_iam_binding_condition.dart';
import 'delivery_pipeline_iam_binding_state.dart';

class DeliveryPipelineIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<DeliveryPipelineIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [DeliveryPipelineIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryPipelineIamBinding]. {@macro pulumi_clouddeploy_delivery_pipeline_iam_binding_delivery_pipeline_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryPipelineIamBinding(
    String name, {
    DeliveryPipelineIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamBinding:DeliveryPipelineIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<DeliveryPipelineIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeliveryPipelineIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [DeliveryPipelineIamBinding] resource's state with the given [name] and [id].
  static DeliveryPipelineIamBinding get(
    String name,
    pulumi.Input<String> id, {
    DeliveryPipelineIamBindingState? state,
  }) {
    return DeliveryPipelineIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeliveryPipelineIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamBinding:DeliveryPipelineIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<DeliveryPipelineIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeliveryPipelineIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
