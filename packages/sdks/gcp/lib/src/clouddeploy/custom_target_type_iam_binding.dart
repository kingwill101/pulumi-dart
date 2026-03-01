import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_binding_args.dart';
import 'custom_target_type_iam_binding_condition.dart';
import 'custom_target_type_iam_binding_state.dart';

class CustomTargetTypeIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<CustomTargetTypeIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [CustomTargetTypeIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomTargetTypeIamBinding]. {@macro pulumi_clouddeploy_custom_target_type_iam_binding_custom_target_type_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomTargetTypeIamBinding(
    String name, {
    CustomTargetTypeIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamBinding:CustomTargetTypeIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<CustomTargetTypeIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }

  /// Gets an existing [CustomTargetTypeIamBinding] resource's state with the given [name] and [id].
  static CustomTargetTypeIamBinding get(
    String name,
    pulumi.Input<String> id, {
    CustomTargetTypeIamBindingState? state,
  }) {
    return CustomTargetTypeIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomTargetTypeIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamBinding:CustomTargetTypeIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<CustomTargetTypeIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
