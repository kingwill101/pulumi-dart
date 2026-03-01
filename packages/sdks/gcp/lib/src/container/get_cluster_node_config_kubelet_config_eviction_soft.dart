// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigKubeletConfigEvictionSoft {
  /// Defines percentage of soft eviction threshold for imagefs.available.
  final String imagefsAvailable;
  /// Defines percentage of soft eviction threshold for imagefs.inodesFree.
  final String imagefsInodesFree;
  /// Defines quantity of soft eviction threshold for memory.available.
  final String memoryAvailable;
  /// Defines percentage of soft eviction threshold for nodefs.available.
  final String nodefsAvailable;
  /// Defines percentage of soft eviction threshold for nodefs.inodesFree.
  final String nodefsInodesFree;
  /// Defines percentage of soft eviction threshold for pid.available.
  final String pidAvailable;

  /// Creates a new [GetClusterNodeConfigKubeletConfigEvictionSoft].
  /// [imagefsAvailable] Defines percentage of soft eviction threshold for imagefs.available.
  /// [imagefsInodesFree] Defines percentage of soft eviction threshold for imagefs.inodesFree.
  /// [memoryAvailable] Defines quantity of soft eviction threshold for memory.available.
  /// [nodefsAvailable] Defines percentage of soft eviction threshold for nodefs.available.
  /// [nodefsInodesFree] Defines percentage of soft eviction threshold for nodefs.inodesFree.
  /// [pidAvailable] Defines percentage of soft eviction threshold for pid.available.
  GetClusterNodeConfigKubeletConfigEvictionSoft({
    required this.imagefsAvailable,
    required this.imagefsInodesFree,
    required this.memoryAvailable,
    required this.nodefsAvailable,
    required this.nodefsInodesFree,
    required this.pidAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagefsAvailable': imagefsAvailable,
      'imagefsInodesFree': imagefsInodesFree,
      'memoryAvailable': memoryAvailable,
      'nodefsAvailable': nodefsAvailable,
      'nodefsInodesFree': nodefsInodesFree,
      'pidAvailable': pidAvailable,
    };
  }

  factory GetClusterNodeConfigKubeletConfigEvictionSoft.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigKubeletConfigEvictionSoft(
      imagefsAvailable: map['imagefsAvailable'] as String,
      imagefsInodesFree: map['imagefsInodesFree'] as String,
      memoryAvailable: map['memoryAvailable'] as String,
      nodefsAvailable: map['nodefsAvailable'] as String,
      nodefsInodesFree: map['nodefsInodesFree'] as String,
      pidAvailable: map['pidAvailable'] as String,
    );
  }
}

