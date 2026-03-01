// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource_response.dart';
import 'ospolicy_resource_file_resource_response.dart';
import 'ospolicy_resource_package_resource_response.dart';
import 'ospolicy_resource_repository_resource_response.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResourceResponse {
  /// Exec resource
  final OSPolicyResourceExecResourceResponse exec;
  /// File resource
  final OSPolicyResourceFileResourceResponse file;
  /// Package resource
  final OSPolicyResourcePackageResourceResponse pkg;
  /// Package repository resource
  final OSPolicyResourceRepositoryResourceResponse repository;

  /// Creates a new [OSPolicyResourceResponse].
  /// [exec] Exec resource
  /// [file] File resource
  /// [pkg] Package resource
  /// [repository] Package repository resource
  OSPolicyResourceResponse({
    required this.exec,
    required this.file,
    required this.pkg,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': exec.toMap(),
      'file': file.toMap(),
      'pkg': pkg.toMap(),
      'repository': repository.toMap(),
    };
  }

  factory OSPolicyResourceResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceResponse(
      exec: OSPolicyResourceExecResourceResponse.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      file: OSPolicyResourceFileResourceResponse.fromMap((map['file'] as Map).cast<String, dynamic>()),
      pkg: OSPolicyResourcePackageResourceResponse.fromMap((map['pkg'] as Map).cast<String, dynamic>()),
      repository: OSPolicyResourceRepositoryResourceResponse.fromMap((map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}

