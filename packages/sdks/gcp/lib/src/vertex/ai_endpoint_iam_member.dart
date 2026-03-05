import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_member_args.dart';
import 'ai_endpoint_iam_member_condition.dart';
import 'ai_endpoint_iam_member_state.dart';

class AiEndpointIamMember extends pulumi.CustomResource {
  late final pulumi.Output<AiEndpointIamMemberCondition?> condition;
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [AiEndpointIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpointIamMember]. {@macro pulumi_vertex_ai_endpoint_iam_member_ai_endpoint_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEndpointIamMember(
    String name, {
    AiEndpointIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamMember:AiEndpointIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AiEndpointIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AiEndpointIamMember] resource's state with the given [name] and [id].
  static AiEndpointIamMember get(
    String name,
    pulumi.Input<String> id, {
    AiEndpointIamMemberState? state,
  }) {
    return AiEndpointIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiEndpointIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointIamMember:AiEndpointIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AiEndpointIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
