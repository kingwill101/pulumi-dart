// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_exec.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_file.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResource {
  /// Exec resource Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourceExec>? exec;
  /// File resource Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourceFile>? file;
  /// The id of the resource with the following restrictions:
  ///
  /// *   Must contain only lowercase letters, numbers, and hyphens.
  /// *   Must start with a letter.
  /// *   Must be between 1-63 characters.
  /// *   Must end with a number or a letter.
  /// *   Must be unique within the OS policy.
  final pulumi.Input<String> id;
  /// Package resource Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkg>? pkg;
  /// Package repository resource Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourceRepository>? repository;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResource].
  /// [exec] Exec resource Structure is
  /// [file] File resource Structure is
  /// [id] The id of the resource with the following restrictions:
  /// [pkg] Package resource Structure is
  /// [repository] Package repository resource Structure is
  const OsPolicyAssignmentOsPolicyResourceGroupResource({
    this.exec,
    this.file,
    required this.id,
    this.pkg,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourceExec, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'id': id,
      'pkg': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkg, Map<String, dynamic>>(pkg, (value) => value.toMap()),
      'repository': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourceRepository, Map<String, dynamic>>(repository, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResource.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResource(
      exec: (() { final guardedValue = map['exec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourceExec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourceFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      pkg: (() { final guardedValue = map['pkg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourcePkg.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourceRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

