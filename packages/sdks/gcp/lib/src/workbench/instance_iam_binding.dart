import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_args.dart';
import 'instance_iam_binding_condition.dart';
import 'instance_iam_binding_state.dart';

class InstanceIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [InstanceIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamBinding]. {@macro pulumi_workbench_instance_iam_binding_instance_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamBinding(
    String name, {
    InstanceIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamBinding:InstanceIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<InstanceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [InstanceIamBinding] resource's state with the given [name] and [id].
  static InstanceIamBinding get(
    String name,
    pulumi.Input<String> id, {
    InstanceIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instanceIamBinding:InstanceIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<InstanceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [InstanceIamBinding] resource.
  InstanceIamBinding.reference(String urn)
    : super(
        'gcp:workbench/instanceIamBinding:InstanceIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<InstanceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
