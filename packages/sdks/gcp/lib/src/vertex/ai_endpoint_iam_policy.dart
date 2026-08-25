import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_policy_args.dart';
import 'ai_endpoint_iam_policy_state.dart';

class AiEndpointIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;

  /// Creates a new [AiEndpointIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpointIamPolicy]. {@macro pulumi_vertex_ai_endpoint_iam_policy_ai_endpoint_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEndpointIamPolicy(
    String name, {
    AiEndpointIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamPolicy:AiEndpointIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [AiEndpointIamPolicy] resource's state with the given [name] and [id].
  static AiEndpointIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    AiEndpointIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiEndpointIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiEndpointIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamPolicy:AiEndpointIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [AiEndpointIamPolicy] resource.
  AiEndpointIamPolicy.reference(String urn)
    : super(
        'gcp:vertex/aiEndpointIamPolicy:AiEndpointIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
