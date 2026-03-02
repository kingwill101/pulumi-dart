// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A namespace junction.
class NamespaceJunctionResponse {
  /// Namespace path on a cache for a Storage Target.
  final pulumi.Input<String>? namespacePath;
  /// Name of the access policy applied to this junction.
  final pulumi.Input<String>? nfsAccessPolicy;
  /// NFS export where targetPath exists.
  final pulumi.Input<String>? nfsExport;
  /// Path in Storage Target to which namespacePath points.
  final pulumi.Input<String>? targetPath;

  /// Creates a new [NamespaceJunctionResponse].
  /// [namespacePath] Namespace path on a cache for a Storage Target.
  /// [nfsAccessPolicy] Name of the access policy applied to this junction.
  /// [nfsExport] NFS export where targetPath exists.
  /// [targetPath] Path in Storage Target to which namespacePath points.
  NamespaceJunctionResponse({
    this.namespacePath,
    this.nfsAccessPolicy,
    this.nfsExport,
    this.targetPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacePath': ?namespacePath,
      'nfsAccessPolicy': ?nfsAccessPolicy,
      'nfsExport': ?nfsExport,
      'targetPath': ?targetPath,
    };
  }

  factory NamespaceJunctionResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceJunctionResponse(
      namespacePath: map['namespacePath'] == null ? null : (map['namespacePath'] as String).input(),
      nfsAccessPolicy: map['nfsAccessPolicy'] == null ? null : (map['nfsAccessPolicy'] as String).input(),
      nfsExport: map['nfsExport'] == null ? null : (map['nfsExport'] as String).input(),
      targetPath: map['targetPath'] == null ? null : (map['targetPath'] as String).input(),
    );
  }
}

