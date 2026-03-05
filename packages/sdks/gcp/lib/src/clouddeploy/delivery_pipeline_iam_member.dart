import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_member_args.dart';
import 'delivery_pipeline_iam_member_condition.dart';
import 'delivery_pipeline_iam_member_state.dart';

class DeliveryPipelineIamMember extends pulumi.CustomResource {
  late final pulumi.Output<DeliveryPipelineIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [DeliveryPipelineIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryPipelineIamMember]. {@macro pulumi_clouddeploy_delivery_pipeline_iam_member_delivery_pipeline_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryPipelineIamMember(
    String name, {
    DeliveryPipelineIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamMember:DeliveryPipelineIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<DeliveryPipelineIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeliveryPipelineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [DeliveryPipelineIamMember] resource's state with the given [name] and [id].
  static DeliveryPipelineIamMember get(
    String name,
    pulumi.Input<String> id, {
    DeliveryPipelineIamMemberState? state,
  }) {
    return DeliveryPipelineIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeliveryPipelineIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipelineIamMember:DeliveryPipelineIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<DeliveryPipelineIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeliveryPipelineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
