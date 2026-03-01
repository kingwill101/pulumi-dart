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
    required pulumi.Output<Assignment> assignment,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    required pulumi.Output<String> guestPolicyId,
    pulumi.Output<String>? name,
    pulumi.Output<List<PackageRepository>>? packageRepositories,
    pulumi.Output<List<Package>>? packages,
    pulumi.Output<String>? project,
    pulumi.Output<List<SoftwareRecipe>>? recipes,
  }) :
      assignment = pulumi.Input.asInput<Assignment>(assignment),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      guestPolicyId = pulumi.Input.asInput<String>(guestPolicyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageRepositories = pulumi.Input.asOptionalInput<List<PackageRepository>>(packageRepositories),
      packages = pulumi.Input.asOptionalInput<List<Package>>(packages),
      project = pulumi.Input.asOptionalInput<String>(project),
      recipes = pulumi.Input.asOptionalInput<List<SoftwareRecipe>>(recipes);

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
      assignment: pulumi.Output.create<Assignment>(Assignment.fromMap((map['assignment'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      guestPolicyId: pulumi.Output.create<String>(map['guestPolicyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      packageRepositories: map['packageRepositories'] == null ? null : pulumi.Output.create<List<PackageRepository>>(pulumi.Input.decodeList<PackageRepository>(map['packageRepositories'], (value) => PackageRepository.fromMap((value as Map).cast<String, dynamic>()))),
      packages: map['packages'] == null ? null : pulumi.Output.create<List<Package>>(pulumi.Input.decodeList<Package>(map['packages'], (value) => Package.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recipes: map['recipes'] == null ? null : pulumi.Output.create<List<SoftwareRecipe>>(pulumi.Input.decodeList<SoftwareRecipe>(map['recipes'], (value) => SoftwareRecipe.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

