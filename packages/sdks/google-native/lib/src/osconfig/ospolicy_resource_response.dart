// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_exec_resource_response.dart';
import 'ospolicy_resource_file_resource_response.dart';
import 'ospolicy_resource_package_resource_response.dart';
import 'ospolicy_resource_repository_resource_response.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResourceResponse {
  /// Exec resource
  final pulumi.Input<OSPolicyResourceExecResourceResponse> exec;
  /// File resource
  final pulumi.Input<OSPolicyResourceFileResourceResponse> file;
  /// Package resource
  final pulumi.Input<OSPolicyResourcePackageResourceResponse> pkg;
  /// Package repository resource
  final pulumi.Input<OSPolicyResourceRepositoryResourceResponse> repository;

  /// Creates a new [OSPolicyResourceResponse].
  /// [exec] Exec resource
  /// [file] File resource
  /// [pkg] Package resource
  /// [repository] Package repository resource
  const OSPolicyResourceResponse({
    required this.exec,
    required this.file,
    required this.pkg,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': pulumi.Input.mapInputValue<OSPolicyResourceExecResourceResponse, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'file': pulumi.Input.mapInputValue<OSPolicyResourceFileResourceResponse, Map<String, dynamic>>(file, (value) => value.toMap()),
      'pkg': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceResponse, Map<String, dynamic>>(pkg, (value) => value.toMap()),
      'repository': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceResponse, Map<String, dynamic>>(repository, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceResponse(
      exec: pulumi.Input.fromValue(OSPolicyResourceExecResourceResponse.fromMap((map['exec']! as Map).cast<String, dynamic>())),
      file: pulumi.Input.fromValue(OSPolicyResourceFileResourceResponse.fromMap((map['file']! as Map).cast<String, dynamic>())),
      pkg: pulumi.Input.fromValue(OSPolicyResourcePackageResourceResponse.fromMap((map['pkg']! as Map).cast<String, dynamic>())),
      repository: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceResponse.fromMap((map['repository']! as Map).cast<String, dynamic>())),
    );
  }
}
