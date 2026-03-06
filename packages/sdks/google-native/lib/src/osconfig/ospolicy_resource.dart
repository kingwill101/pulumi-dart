// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_exec_resource.dart';
import 'ospolicy_resource_file_resource.dart';
import 'ospolicy_resource_package_resource.dart';
import 'ospolicy_resource_repository_resource.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResource {
  /// Exec resource
  final pulumi.Input<OSPolicyResourceExecResource>? exec;
  /// File resource
  final pulumi.Input<OSPolicyResourceFileResource>? file;
  /// The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.
  final pulumi.Input<String> id;
  /// Package resource
  final pulumi.Input<OSPolicyResourcePackageResource>? pkg;
  /// Package repository resource
  final pulumi.Input<OSPolicyResourceRepositoryResource>? repository;

  /// Creates a new [OSPolicyResource].
  /// [exec] Exec resource
  /// [file] File resource
  /// [id] The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.
  /// [pkg] Package resource
  /// [repository] Package repository resource
  const OSPolicyResource({
    this.exec,
    this.file,
    required this.id,
    this.pkg,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceExecResource, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFileResource, Map<String, dynamic>>(file, (value) => value.toMap()),
      'id': id,
      'pkg': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResource, Map<String, dynamic>>(pkg, (value) => value.toMap()),
      'repository': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceRepositoryResource, Map<String, dynamic>>(repository, (value) => value.toMap()),
    };
  }

  factory OSPolicyResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResource(
      exec: (() { final guardedValue = map['exec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceExecResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceFileResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      pkg: (() { final guardedValue = map['pkg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceRepositoryResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

