import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_args.dart';
import 'membership_binding_lifecycle_state_response.dart';

/// Creates a MembershipBinding.
/// Auto-naming is currently not supported for this resource.
class BindingGkehubV1 extends pulumi.CustomResource {
  /// When the membership binding was created.
  late final pulumi.Output<String> createTime;

  /// When the membership binding was deleted.
  late final pulumi.Output<String> deleteTime;

  /// Optional. Labels for this MembershipBinding.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Required. The ID to use for the MembershipBinding.
  late final pulumi.Output<String> membershipBindingId;
  late final pulumi.Output<String> membershipId;

  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  late final pulumi.Output<String> scope;

  /// State of the membership binding resource.
  late final pulumi.Output<MembershipBindingLifecycleStateResponse> state;

  /// Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;

  /// When the membership binding was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BindingGkehubV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BindingGkehubV1]. {@macro pulumi_gkehub_v1_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BindingGkehubV1(
    String name, {
    BindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkehub/v1:Binding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    membershipBindingId = registerOutput<String>('membershipBindingId');
    membershipId = registerOutput<String>('membershipId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scope = registerOutput<String>('scope');
    state = registerOutput<MembershipBindingLifecycleStateResponse>(
      'state',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MembershipBindingLifecycleStateResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
