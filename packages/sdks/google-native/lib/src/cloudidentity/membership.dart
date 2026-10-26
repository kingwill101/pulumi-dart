import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_response.dart';
import 'membership_args.dart';
import 'membership_role_response.dart';

/// Creates a `Membership`.
/// Auto-naming is currently not supported for this resource.
class Membership extends pulumi.CustomResource {
  /// The time when the `Membership` was created.
  late final pulumi.Output<String> createTime;
  /// Delivery setting associated with the membership.
  late final pulumi.Output<String> deliverySetting;
  late final pulumi.Output<String> groupId;
  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group}/memberships/{membership}`.
  late final pulumi.Output<String> name;
  /// Immutable. The `EntityKey` of the member.
  late final pulumi.Output<EntityKeyResponse> preferredMemberKey;
  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  late final pulumi.Output<List<MembershipRoleResponse>> roles;
  /// The type of the membership.
  late final pulumi.Output<String> type;
  /// The time when the `Membership` was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Membership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Membership]. {@macro pulumi_cloudidentity_v1_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Membership(
    String name, {
    MembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1:Membership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['groupId']).merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deliverySetting = registerOutput<String>('deliverySetting');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    preferredMemberKey = registerOutput<EntityKeyResponse>('preferredMemberKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntityKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roles = registerOutput<List<MembershipRoleResponse>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MembershipRoleResponse>(guardedValue, (value) => MembershipRoleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Membership] resource.
  Membership.reference(String urn)
    : super(
        'google-native:cloudidentity/v1:Membership',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deliverySetting = registerOutput<String>('deliverySetting');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    preferredMemberKey = registerOutput<EntityKeyResponse>('preferredMemberKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntityKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roles = registerOutput<List<MembershipRoleResponse>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MembershipRoleResponse>(guardedValue, (value) => MembershipRoleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
