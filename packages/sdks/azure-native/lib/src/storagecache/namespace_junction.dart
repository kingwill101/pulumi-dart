// ignore_for_file: unused_element, unnecessary_cast


/// A namespace junction.
class NamespaceJunction {
  /// Namespace path on a cache for a Storage Target.
  final String? namespacePath;
  /// Name of the access policy applied to this junction.
  final String? nfsAccessPolicy;
  /// NFS export where targetPath exists.
  final String? nfsExport;
  /// Path in Storage Target to which namespacePath points.
  final String? targetPath;

  /// Creates a new [NamespaceJunction].
  /// [namespacePath] Namespace path on a cache for a Storage Target.
  /// [nfsAccessPolicy] Name of the access policy applied to this junction.
  /// [nfsExport] NFS export where targetPath exists.
  /// [targetPath] Path in Storage Target to which namespacePath points.
  NamespaceJunction({
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

  factory NamespaceJunction.fromMap(Map<String, dynamic> map) {
    return NamespaceJunction(
      namespacePath: map['namespacePath'] == null ? null : map['namespacePath'] as String,
      nfsAccessPolicy: map['nfsAccessPolicy'] == null ? null : map['nfsAccessPolicy'] as String,
      nfsExport: map['nfsExport'] == null ? null : map['nfsExport'] as String,
      targetPath: map['targetPath'] == null ? null : map['targetPath'] as String,
    );
  }
}

