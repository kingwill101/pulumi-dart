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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    condition = registerOutput<AiEndpointIamBindingCondition?>('condition');
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AiEndpointIamBinding] resource's state with the given [name] and [id].
  static AiEndpointIamBinding get(
    String name,
    pulumi.Input<String> id, {
    AiEndpointIamBindingState? state,
  }) {
    return AiEndpointIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    condition = registerOutput<AiEndpointIamBindingCondition?>('condition');
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
