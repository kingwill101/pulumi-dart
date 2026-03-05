// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_exec_resource_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_resource_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_response_osconfig_v1alpha.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResourceResponseOsconfigV1alpha {
  /// Exec resource
  final pulumi.Input<OSPolicyResourceExecResourceResponseOsconfigV1alpha> exec;
  /// File resource
  final pulumi.Input<OSPolicyResourceFileResourceResponseOsconfigV1alpha> file;
  /// Package resource
  final pulumi.Input<OSPolicyResourcePackageResourceResponseOsconfigV1alpha> pkg;
  /// Package repository resource
  final pulumi.Input<OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha> repository;

  /// Creates a new [OSPolicyResourceResponseOsconfigV1alpha].
  /// [exec] Exec resource
  /// [file] File resource
  /// [pkg] Package resource
  /// [repository] Package repository resource
  OSPolicyResourceResponseOsconfigV1alpha({
    required this.exec,
    required this.file,
    required this.pkg,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': pulumi.Input.mapInputValue<OSPolicyResourceExecResourceResponseOsconfigV1alpha, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'file': pulumi.Input.mapInputValue<OSPolicyResourceFileResourceResponseOsconfigV1alpha, Map<String, dynamic>>(file, (value) => value.toMap()),
      'pkg': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceResponseOsconfigV1alpha, Map<String, dynamic>>(pkg, (value) => value.toMap()),
      'repository': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha, Map<String, dynamic>>(repository, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceResponseOsconfigV1alpha(
      exec: pulumi.Input.fromValue(OSPolicyResourceExecResourceResponseOsconfigV1alpha.fromMap((map['exec']! as Map).cast<String, dynamic>())),
      file: pulumi.Input.fromValue(OSPolicyResourceFileResourceResponseOsconfigV1alpha.fromMap((map['file']! as Map).cast<String, dynamic>())),
      pkg: pulumi.Input.fromValue(OSPolicyResourcePackageResourceResponseOsconfigV1alpha.fromMap((map['pkg']! as Map).cast<String, dynamic>())),
      repository: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha.fromMap((map['repository']! as Map).cast<String, dynamic>())),
    );
  }
}

