// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LinuxContainerUser represents user identity information in Linux containers
class LinuxContainerUser {
  /// GID is the primary gid initially attached to the first process in the container
  final pulumi.Input<int> gid;
  /// SupplementalGroups are the supplemental groups initially attached to the first process in the container
  final pulumi.Input<List<int>>? supplementalGroups;
  /// UID is the primary uid initially attached to the first process in the container
  final pulumi.Input<int> uid;

  /// Creates a new [LinuxContainerUser].
  /// [gid] GID is the primary gid initially attached to the first process in the container
  /// [supplementalGroups] SupplementalGroups are the supplemental groups initially attached to the first process in the container
  /// [uid] UID is the primary uid initially attached to the first process in the container
  const LinuxContainerUser({
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
      gid: pulumi.Input.fromValue(map['gid'] as int),
      supplementalGroups: (() { final guardedValue = map['supplementalGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      uid: pulumi.Input.fromValue(map['uid'] as int),
    );
  }
}
