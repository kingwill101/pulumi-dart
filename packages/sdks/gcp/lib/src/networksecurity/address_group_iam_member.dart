import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_group_iam_member_args.dart';
import 'address_group_iam_member_condition.dart';
import 'address_group_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Network Security ProjectAddressGroup. Each of these resources serves a different use case:
///
/// * `gcp.networksecurity.AddressGroupIamPolicy`: Authoritative. Sets the IAM policy for the projectaddressgroup and replaces any existing policy already attached.
/// * `gcp.networksecurity.AddressGroupIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the projectaddressgroup are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.networksecurity.AddressGroupIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the projectaddressgroup are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.networksecurity.AddressGroupIamPolicy`: Retrieves the IAM policy for the projectaddressgroup
///
/// &gt; **Note:** `gcp.networksecurity.AddressGroupIamPolicy` **cannot** be used in conjunction with `gcp.networksecurity.AddressGroupIamBinding` and `gcp.networksecurity.AddressGroupIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.networksecurity.AddressGroupIamBinding` resources **can be** used in conjunction with `gcp.networksecurity.AddressGroupIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.networksecurity.AddressGroupIamPolicy
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/addressGroups/{{name}}
/// * {{project}}/{{location}}/{{name}}
/// * {{location}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Network Security projectaddressgroup IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_network_security_address_group_iam_member.editor "projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}} roles/compute.networkAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_network_security_address_group_iam_binding.editor "projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}} roles/compute.networkAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember editor projects/{{project}}/locations/{{location}}/addressGroups/{{project_address_group}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AddressGroupIamMember extends pulumi.CustomResource {
  late final pulumi.Output<AddressGroupIamMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of the gateway security policy.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final pulumi.Output<String> member;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.networksecurity.AddressGroupIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [AddressGroupIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AddressGroupIamMember]. {@macro pulumi_networksecurity_address_group_iam_member_address_group_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AddressGroupIamMember(
    String name, {
    AddressGroupIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<AddressGroupIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressGroupIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AddressGroupIamMember] resource's state with the given [name] and [id].
  static AddressGroupIamMember get(
    String name,
    pulumi.Input<String> id, {
    AddressGroupIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AddressGroupIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AddressGroupIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AddressGroupIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressGroupIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AddressGroupIamMember] resource.
  AddressGroupIamMember.reference(String urn)
    : super(
        'gcp:networksecurity/addressGroupIamMember:AddressGroupIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<AddressGroupIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressGroupIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
