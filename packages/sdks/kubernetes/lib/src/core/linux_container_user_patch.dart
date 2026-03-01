// ignore_for_file: unused_element, unnecessary_cast


/// LinuxContainerUser represents user identity information in Linux containers
class LinuxContainerUserPatch {
  /// GID is the primary gid initially attached to the first process in the container
  final int? gid;
  /// SupplementalGroups are the supplemental groups initially attached to the first process in the container
  final List<int>? supplementalGroups;
  /// UID is the primary uid initially attached to the first process in the container
  final int? uid;

  /// Creates a new [LinuxContainerUserPatch].
  /// [gid] GID is the primary gid initially attached to the first process in the container
  /// [supplementalGroups] SupplementalGroups are the supplemental groups initially attached to the first process in the container
  /// [uid] UID is the primary uid initially attached to the first process in the container
  LinuxContainerUserPatch({
    this.gid,
    this.supplementalGroups,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': ?gid,
      'supplementalGroups': ?supplementalGroups,
      'uid': ?uid,
    };
  }

  factory LinuxContainerUserPatch.fromMap(Map<String, dynamic> map) {
    return LinuxContainerUserPatch(
      gid: map['gid'] == null ? null : map['gid'] as int,
      supplementalGroups: map['supplementalGroups'] == null ? null : (map['supplementalGroups'] as List).cast<int>(),
      uid: map['uid'] == null ? null : map['uid'] as int,
    );
  }
}

