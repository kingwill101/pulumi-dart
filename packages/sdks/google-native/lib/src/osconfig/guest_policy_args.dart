// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment.dart';
import 'package.dart';
import 'package_repository.dart';
import 'software_recipe.dart';

/// {@template pulumi_osconfig_v1beta_guest_policy_args_doc}
/// The set of arguments for GuestPolicy.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1beta_guest_policy_args_doc}
class GuestPolicyArgs {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  final pulumi.Input<Assignment> assignment;
  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;
  /// Required. The logical name of the guest policy in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> guestPolicyId;
  /// Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  final pulumi.Input<String>? name;
  /// A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  final pulumi.Input<List<PackageRepository>>? packageRepositories;
  /// The software packages to be managed by this policy.
  final pulumi.Input<List<Package>>? packages;
  final pulumi.Input<String>? project;
  /// A list of Recipes to install on the VM instance.
  final pulumi.Input<List<SoftwareRecipe>>? recipes;

  /// Creates a new [GuestPolicyArgs].
  /// [assignment] Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  /// [description] Description of the guest policy. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this guest policy. If this is provided on update, it must match the server's etag.
  /// [guestPolicyId] Required. The logical name of the guest policy in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  /// [name] Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  /// [packageRepositories] A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  /// [packages] The software packages to be managed by this policy.
  /// [project] Optional.
  /// [recipes] A list of Recipes to install on the VM instance.
  GuestPolicyArgs({
    required this.assignment,
    this.description,
    this.etag,
    required this.guestPolicyId,
    this.name,
    this.packageRepositories,
    this.packages,
    this.project,
    this.recipes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignment': pulumi.Input.mapInputValue<Assignment, Map<String, dynamic>>(assignment, (value) => value.toMap()),
      'description': ?description,
      'etag': ?etag,
      'guestPolicyId': guestPolicyId,
      'name': ?name,
      'packageRepositories': ?pulumi.Input.mapOptionalInputValue<List<PackageRepository>, List<Map<String, dynamic>>>(packageRepositories, (value) => pulumi.Input.encodeList<PackageRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packages': ?pulumi.Input.mapOptionalInputValue<List<Package>, List<Map<String, dynamic>>>(packages, (value) => pulumi.Input.encodeList<Package, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'recipes': ?pulumi.Input.mapOptionalInputValue<List<SoftwareRecipe>, List<Map<String, dynamic>>>(recipes, (value) => pulumi.Input.encodeList<SoftwareRecipe, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GuestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GuestPolicyArgs(
      assignment: (Assignment.fromMap((map['assignment'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      guestPolicyId: (map['guestPolicyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      packageRepositories: map['packageRepositories'] == null ? null : (pulumi.Input.decodeList<PackageRepository>(map['packageRepositories'], (value) => PackageRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
      packages: map['packages'] == null ? null : (pulumi.Input.decodeList<Package>(map['packages'], (value) => Package.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      recipes: map['recipes'] == null ? null : (pulumi.Input.decodeList<SoftwareRecipe>(map['recipes'], (value) => SoftwareRecipe.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

