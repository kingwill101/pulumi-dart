import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_member_args.dart';
import 'custom_target_type_iam_member_condition.dart';
import 'custom_target_type_iam_member_state.dart';

class CustomTargetTypeIamMember extends pulumi.CustomResource {
  late final pulumi.Output<CustomTargetTypeIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> role;

  /// Creates a new [CustomTargetTypeIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomTargetTypeIamMember]. {@macro pulumi_clouddeploy_custom_target_type_iam_member_custom_target_type_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomTargetTypeIamMember(
    String name, {
    CustomTargetTypeIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamMember:CustomTargetTypeIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<CustomTargetTypeIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomTargetTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [CustomTargetTypeIamMember] resource's state with the given [name] and [id].
  static CustomTargetTypeIamMember get(
    String name,
    pulumi.Input<String> id, {
    CustomTargetTypeIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomTargetTypeIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomTargetTypeIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamMember:CustomTargetTypeIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<CustomTargetTypeIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomTargetTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [CustomTargetTypeIamMember] resource.
  CustomTargetTypeIamMember.reference(String urn)
    : super(
        'gcp:clouddeploy/customTargetTypeIamMember:CustomTargetTypeIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<CustomTargetTypeIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomTargetTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
