// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LinuxContainerUser represents user identity information in Linux containers
class LinuxContainerUserPatch {
  /// GID is the primary gid initially attached to the first process in the container
  final pulumi.Input<int?>? gid;
  /// SupplementalGroups are the supplemental groups initially attached to the first process in the container
  final pulumi.Input<List<int>?>? supplementalGroups;
  /// UID is the primary uid initially attached to the first process in the container
  final pulumi.Input<int?>? uid;

  /// Creates a new [LinuxContainerUserPatch].
  /// [gid] GID is the primary gid initially attached to the first process in the container
  /// [supplementalGroups] SupplementalGroups are the supplemental groups initially attached to the first process in the container
  /// [uid] UID is the primary uid initially attached to the first process in the container
  const LinuxContainerUserPatch({
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
      gid: (() { final guardedValue = map['gid']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      supplementalGroups: (() { final guardedValue = map['supplementalGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
