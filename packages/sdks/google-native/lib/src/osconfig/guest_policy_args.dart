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
  const GuestPolicyArgs({
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
      assignment: pulumi.Input.fromValue(Assignment.fromMap((map['assignment']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestPolicyId: pulumi.Input.fromValue(map['guestPolicyId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageRepositories: (() { final guardedValue = map['packageRepositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PackageRepository>(guardedValue, (value) => PackageRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      packages: (() { final guardedValue = map['packages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Package>(guardedValue, (value) => Package.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipes: (() { final guardedValue = map['recipes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoftwareRecipe>(guardedValue, (value) => SoftwareRecipe.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

