import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_args.dart';
import 'instance_iam_member_condition.dart';
import 'instance_iam_member_state.dart';

class InstanceIamMember extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [InstanceIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamMember]. {@macro pulumi_securesourcemanager_instance_iam_member_instance_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamMember(
    String name, {
    InstanceIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamMember:InstanceIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }

  /// Gets an existing [InstanceIamMember] resource's state with the given [name] and [id].
  static InstanceIamMember get(
    String name,
    pulumi.Input<String> id, {
    InstanceIamMemberState? state,
  }) {
    return InstanceIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instanceIamMember:InstanceIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
