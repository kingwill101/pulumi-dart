// ignore_for_file: unused_element, unnecessary_cast


/// LinuxContainerUser represents user identity information in Linux containers
class LinuxContainerUser {
  /// GID is the primary gid initially attached to the first process in the container
  final int gid;
  /// SupplementalGroups are the supplemental groups initially attached to the first process in the container
  final List<int>? supplementalGroups;
  /// UID is the primary uid initially attached to the first process in the container
  final int uid;

  /// Creates a new [LinuxContainerUser].
  /// [gid] GID is the primary gid initially attached to the first process in the container
  /// [supplementalGroups] SupplementalGroups are the supplemental groups initially attached to the first process in the container
  /// [uid] UID is the primary uid initially attached to the first process in the container
  LinuxContainerUser({
    required this.gid,
    this.supplementalGroups,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'supplementalGroups': ?supplementalGroups,
      'uid': uid,
    };
  }

  factory LinuxContainerUser.fromMap(Map<String, dynamic> map) {
    return LinuxContainerUser(
      gid: map['gid'] as int,
      supplementalGroups: map['supplementalGroups'] == null ? null : (map['supplementalGroups'] as List).cast<int>(),
      uid: map['uid'] as int,
    );
  }
}

