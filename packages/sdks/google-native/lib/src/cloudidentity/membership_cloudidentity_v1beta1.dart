import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_response_cloudidentity_v1beta1.dart';
import 'membership_cloudidentity_v1beta1_args.dart';

/// Creates a `Membership`.
/// Auto-naming is currently not supported for this resource.
class MembershipCloudidentityV1beta1 extends pulumi.CustomResource {
  /// The time when the `Membership` was created.
  late final pulumi.Output<String> createTime;

  /// Delivery setting associated with the membership.
  late final pulumi.Output<String> deliverySetting;
  late final pulumi.Output<String> groupId;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  late final pulumi.Output<EntityKeyResponseCloudidentityV1beta1> memberKey;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  late final pulumi.Output<String> name;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  late final pulumi.Output<EntityKeyResponseCloudidentityV1beta1>
  preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  late final pulumi.Output<List<Map<String, dynamic>>> roles;

  /// The type of the membership.
  late final pulumi.Output<String> type;

  /// The time when the `Membership` was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MembershipCloudidentityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MembershipCloudidentityV1beta1]. {@macro pulumi_cloudidentity_v1beta1_membership_cloudidentity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MembershipCloudidentityV1beta1(
    String name, {
    MembershipCloudidentityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudidentity/v1beta1:Membership',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deliverySetting = registerOutput<String>('deliverySetting');
    groupId = registerOutput<String>('groupId');
    memberKey = registerOutput<EntityKeyResponseCloudidentityV1beta1>(
      'memberKey',
    );
    this.name = registerOutput<String>('name');
    preferredMemberKey = registerOutput<EntityKeyResponseCloudidentityV1beta1>(
      'preferredMemberKey',
    );
    roles = registerOutput<List<Map<String, dynamic>>>('roles');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
