import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_binding_args.dart';
import 'target_iam_binding_condition.dart';
import 'target_iam_binding_state.dart';

class TargetIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<TargetIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [TargetIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetIamBinding]. {@macro pulumi_clouddeploy_target_iam_binding_target_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetIamBinding(
    String name, {
    TargetIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/targetIamBinding:TargetIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<TargetIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [TargetIamBinding] resource's state with the given [name] and [id].
  static TargetIamBinding get(
    String name,
    pulumi.Input<String> id, {
    TargetIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TargetIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TargetIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/targetIamBinding:TargetIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<TargetIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [TargetIamBinding] resource.
  TargetIamBinding.reference(String urn)
    : super(
        'gcp:clouddeploy/targetIamBinding:TargetIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<TargetIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
