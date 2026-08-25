// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_assignment.dart';
import 'guest_policies_package.dart';
import 'guest_policies_package_repository.dart';
import 'guest_policies_recipe.dart';

/// {@template pulumi_osconfig_guest_policies_guest_policies_args_doc}
/// The set of arguments for GuestPolicies.
/// {@endtemplate}
/// {@macro pulumi_osconfig_guest_policies_guest_policies_args_doc}
class GuestPoliciesArgs {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets
  /// or groups of VM instances by different parameters such as labels, names, OS, or zones.
  /// If left empty, all VM instances underneath this policy are targeted.
  /// At the same level in the resource hierarchy (that is within a project), the service prevents
  /// the creation of multiple policies that conflict with each other.
  /// For more information, see how the service
  /// [handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesAssignment> assignment;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  final pulumi.Input<String?>? description;
  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String?>? etag;
  /// The logical name of the guest policy in the project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  final pulumi.Input<String> guestPolicyId;
  /// A list of package repositories to configure on the VM instance.
  /// This is done before any other configs are applied so they can use these repos.
  /// Package repositories are only configured if the corresponding package manager(s) are available.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesPackageRepository>?>? packageRepositories;
  /// The software packages to be managed by this policy.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesPackage>?>? packages;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A list of Recipes to install on the VM instance.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesRecipe>?>? recipes;

  /// Creates a new [GuestPoliciesArgs].
  /// [assignment] Specifies the VM instances that are assigned to this policy. This allows you to target sets
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the guest policy. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this guest policy. If this is provided on update, it must match the server's etag.
  /// [guestPolicyId] The logical name of the guest policy in the project with the following restrictions:
  /// [packageRepositories] A list of package repositories to configure on the VM instance.
  /// [packages] The software packages to be managed by this policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [recipes] A list of Recipes to install on the VM instance.
  const GuestPoliciesArgs({
    required this.assignment,
    this.deletionPolicy,
    this.description,
    this.etag,
    required this.guestPolicyId,
    this.packageRepositories,
    this.packages,
    this.project,
    this.recipes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignment': pulumi.Input.mapInputValue<GuestPoliciesAssignment, Map<String, dynamic>>(assignment, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'etag': ?etag,
      'guestPolicyId': guestPolicyId,
      'packageRepositories': ?pulumi.Input.mapOptionalInputValue<List<GuestPoliciesPackageRepository>, List<Map<String, dynamic>>>(packageRepositories, (value) => pulumi.Input.encodeList<GuestPoliciesPackageRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packages': ?pulumi.Input.mapOptionalInputValue<List<GuestPoliciesPackage>, List<Map<String, dynamic>>>(packages, (value) => pulumi.Input.encodeList<GuestPoliciesPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'recipes': ?pulumi.Input.mapOptionalInputValue<List<GuestPoliciesRecipe>, List<Map<String, dynamic>>>(recipes, (value) => pulumi.Input.encodeList<GuestPoliciesRecipe, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GuestPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesArgs(
      assignment: pulumi.Input.fromValue(GuestPoliciesAssignment.fromMap((map['assignment']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestPolicyId: pulumi.Input.fromValue(map['guestPolicyId'] as String),
      packageRepositories: (() { final guardedValue = map['packageRepositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestPoliciesPackageRepository>(guardedValue, (value) => GuestPoliciesPackageRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      packages: (() { final guardedValue = map['packages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestPoliciesPackage>(guardedValue, (value) => GuestPoliciesPackage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipes: (() { final guardedValue = map['recipes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestPoliciesRecipe>(guardedValue, (value) => GuestPoliciesRecipe.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
