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
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<CustomTargetTypeIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomTargetTypeIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [CustomTargetTypeIamBinding] resource's state with the given [name] and [id].
  static CustomTargetTypeIamBinding get(
    String name,
    pulumi.Input<String> id, {
    CustomTargetTypeIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomTargetTypeIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    condition = registerOutput<CustomTargetTypeIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomTargetTypeIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [CustomTargetTypeIamBinding] resource.
  CustomTargetTypeIamBinding.reference(String urn)
    : super(
        'gcp:clouddeploy/customTargetTypeIamBinding:CustomTargetTypeIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<CustomTargetTypeIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomTargetTypeIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
