import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_response.dart';
import 'guest_policy_args.dart';

/// Create an OS Config guest policy.
class GuestPolicy extends pulumi.CustomResource {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  late final pulumi.Output<AssignmentResponse> assignment;

  /// Time this guest policy was created.
  late final pulumi.Output<String> createTime;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  late final pulumi.Output<String> description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;

  /// Required. The logical name of the guest policy in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  late final pulumi.Output<String> guestPolicyId;

  /// Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  late final pulumi.Output<String> name;

  /// A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  late final pulumi.Output<List<Map<String, dynamic>>> packageRepositories;

  /// The software packages to be managed by this policy.
  late final pulumi.Output<List<Map<String, dynamic>>> packages;
  late final pulumi.Output<String> project;

  /// A list of Recipes to install on the VM instance.
  late final pulumi.Output<List<Map<String, dynamic>>> recipes;

  /// Last time this guest policy was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GuestPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestPolicy]. {@macro pulumi_osconfig_v1beta_guest_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestPolicy(
    String name, {
    GuestPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:osconfig/v1beta:GuestPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignment = registerOutput<AssignmentResponse>(
      'assignment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AssignmentResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    guestPolicyId = registerOutput<String>('guestPolicyId');
    this.name = registerOutput<String>('name');
    packageRepositories = registerOutput<List<Map<String, dynamic>>>(
      'packageRepositories',
    );
    packages = registerOutput<List<Map<String, dynamic>>>('packages');
    project = registerOutput<String>('project');
    recipes = registerOutput<List<Map<String, dynamic>>>('recipes');
    updateTime = registerOutput<String>('updateTime');
  }
}
