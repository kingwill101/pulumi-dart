import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_binding_args.dart';
import 'ai_endpoint_iam_binding_condition.dart';
import 'ai_endpoint_iam_binding_state.dart';

class AiEndpointIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<AiEndpointIamBindingCondition?> condition;
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [AiEndpointIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpointIamBinding]. {@macro pulumi_vertex_ai_endpoint_iam_binding_ai_endpoint_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEndpointIamBinding(
    String name, {
    AiEndpointIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamBinding:AiEndpointIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    condition = registerOutput<AiEndpointIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AiEndpointIamBinding] resource's state with the given [name] and [id].
  static AiEndpointIamBinding get(
    String name,
    pulumi.Input<String> id, {
    AiEndpointIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiEndpointIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiEndpointIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamBinding:AiEndpointIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AiEndpointIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AiEndpointIamBinding] resource.
  AiEndpointIamBinding.reference(String urn)
    : super(
        'gcp:vertex/aiEndpointIamBinding:AiEndpointIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<AiEndpointIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
