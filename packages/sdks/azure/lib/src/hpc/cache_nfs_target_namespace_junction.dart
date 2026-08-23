// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheNfsTargetNamespaceJunction {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final pulumi.Input<String>? accessPolicyName;
  /// The client-facing file path of this NFS target within the HPC Cache NFS Target.
  final pulumi.Input<String> namespacePath;
  /// The NFS export of this NFS target within the HPC Cache NFS Target.
  final pulumi.Input<String> nfsExport;
  /// The relative subdirectory path from the `nfsExport` to map to the `namespacePath`. Defaults to `""`, in which case the whole `nfsExport` is exported.
  final pulumi.Input<String>? targetPath;

  /// Creates a new [CacheNfsTargetNamespaceJunction].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [namespacePath] The client-facing file path of this NFS target within the HPC Cache NFS Target.
  /// [nfsExport] The NFS export of this NFS target within the HPC Cache NFS Target.
  /// [targetPath] The relative subdirectory path from the `nfsExport` to map to the `namespacePath`. Defaults to `""`, in which case the whole `nfsExport` is exported.
  const CacheNfsTargetNamespaceJunction({
    this.accessPolicyName,
    required this.namespacePath,
    required this.nfsExport,
    this.targetPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'namespacePath': namespacePath,
      'nfsExport': nfsExport,
      'targetPath': ?targetPath,
    };
  }

  factory CacheNfsTargetNamespaceJunction.fromMap(Map<String, dynamic> map) {
    return CacheNfsTargetNamespaceJunction(
      accessPolicyName: (() { final guardedValue = map['accessPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespacePath: pulumi.Input.fromValue(map['namespacePath'] as String),
      nfsExport: pulumi.Input.fromValue(map['nfsExport'] as String),
      targetPath: (() { final guardedValue = map['targetPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
